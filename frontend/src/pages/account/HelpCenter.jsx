import React, { useMemo, useState } from "react";
import { useNavigate } from "react-router-dom";
import { adminService } from "../../services/adminService";
import "./account-pages.css";

const categories = [
  ["📦","Commandes","Suivi, modification et historique"], ["🚚","Livraison","Délais, adresse et suivi colis"],
  ["💳","Paiement","Méthodes, sécurité et validation"], ["👕","Essayage virtuel","Photo, rendu IA et conseils"],
  ["🔄","Retours","Échanges et remboursements"], ["👤","Compte","Profil, mot de passe et sécurité"]
];
const faqs = [
  ["Essayage virtuel","Comment utiliser l'essayage virtuel ?","Choisissez un produit, cliquez sur Essayer virtuellement, ajoutez votre image puis lancez la simulation. Le résultat vous permet de visualiser le rendu du vêtement avant achat."],
  ["Commandes","Comment suivre ma commande ?","Depuis votre espace client, ouvrez la section Commandes. Vous pourrez consulter le statut de chaque commande et son historique."],
  ["Paiement","Mes paiements sont-ils sécurisés ?","Oui. Les transactions sont traitées via une passerelle sécurisée et les informations sensibles ne sont pas stockées en clair dans l'application."],
  ["Retours","Puis-je retourner un produit ?","Les retours sont possibles selon les conditions générales de vente. Il est recommandé de consulter la politique de retour avant toute demande."],
  ["Compte","Comment modifier mes informations personnelles ?","Rendez-vous dans votre profil, puis cliquez sur Modifier le profil. Vous pourrez mettre à jour votre nom, email et téléphone."],
  ["Technique","Que faire si l'essayage ne se lance pas ?","Vérifiez votre connexion Internet, rechargez la page, puis réessayez. Si le problème persiste, contactez le support via le formulaire du centre d'aide."]
].map(([category, question, answer]) => ({ category, question, answer }));

function FAQItem({ item }) {
  const [open, setOpen] = useState(false);
  return <div className={`faq-item ${open ? "open" : ""}`}><button onClick={() => setOpen(!open)}><span>{item.question}</span><b>{open ? "−" : "+"}</b></button>{open && <p>{item.answer}</p>}</div>;
}

export default function HelpCenter() {
  const navigate = useNavigate();
  const [search, setSearch] = useState("");
  const [modalOpen, setModalOpen] = useState(false);
  const [form, setForm] = useState({ subject:"", message:"", priority:"medium" });
  const [sending, setSending] = useState(false);
  const [success, setSuccess] = useState("");
  const [error, setError] = useState("");

  const filteredFaqs = useMemo(() => {
    const q = search.trim().toLowerCase();
    if (!q) return faqs;
    return faqs.filter((f) => `${f.category} ${f.question} ${f.answer}`.toLowerCase().includes(q));
  }, [search]);

  const submitTicket = async (e) => {
    e.preventDefault();
    try {
      setSending(true); setError(""); setSuccess("");
      await adminService.createSupportTicket({ subject:form.subject, message:form.message, priority:form.priority, status:"open" });
      setSuccess("Votre demande a été envoyée au support.");
      setModalOpen(false); setForm({ subject:"", message:"", priority:"medium" });
    } catch (e) { console.error(e); setError("Impossible d'envoyer votre demande pour le moment."); }
    finally { setSending(false); }
  };

  return (
    <div className="account-page-wrap">
      <div className="account-page-container">
        <div className="account-page-head"><button className="account-back-btn" onClick={() => navigate(-1)}>←</button><div><h1>Centre d'aide</h1><p>Retrouvez les réponses aux questions fréquentes sur TryOn.</p></div></div>
        <div className="help-hero"><h2>Comment pouvons-nous vous aider ?</h2><div className="help-search"><span>🔍</span><input value={search} onChange={(e)=>setSearch(e.target.value)} placeholder="Rechercher une réponse..." /></div></div>
        {success && <div className="account-success">{success}</div>}{error && <div className="account-error">{error}</div>}
        <h3 className="account-section-title">Catégories</h3>
        <div className="help-category-grid">{categories.map(([ic,title,text]) => <button key={title} onClick={()=>setSearch(title)}><div>{ic}</div><h3>{title}</h3><p>{text}</p></button>)}</div>
        <h3 className="account-section-title spaced">Questions fréquentes</h3>
        <div className="faq-list">{filteredFaqs.length ? filteredFaqs.map((item)=><FAQItem key={item.question} item={item} />) : <div className="account-empty"><div>🔍</div><h3>Aucune réponse trouvée</h3><p>Essayez un autre mot-clé ou contactez le support.</p></div>}</div>
        <div className="help-contact-card"><div><h3>Toujours besoin d'aide ?</h3><p>Envoyez une demande au support TryOn. Nous vous répondrons dès que possible.</p></div><button onClick={()=>setModalOpen(true)}>Contacter le support</button></div>
      </div>
      {modalOpen && <div className="account-modal-overlay" onClick={()=>setModalOpen(false)}><div className="account-modal" onClick={(e)=>e.stopPropagation()}><div className="account-modal-head"><h3>Contacter le support</h3><button onClick={()=>setModalOpen(false)}>×</button></div><form onSubmit={submitTicket}><label>Sujet</label><input required value={form.subject} onChange={(e)=>setForm({...form,subject:e.target.value})} placeholder="Ex : Problème avec ma commande" /><label>Priorité</label><select value={form.priority} onChange={(e)=>setForm({...form,priority:e.target.value})}><option value="low">Basse</option><option value="medium">Moyenne</option><option value="high">Haute</option></select><label>Message</label><textarea required rows="5" value={form.message} onChange={(e)=>setForm({...form,message:e.target.value})} placeholder="Décrivez votre problème..." /><button disabled={sending} type="submit">{sending ? "Envoi..." : "Envoyer la demande"}</button></form></div></div>}
    </div>
  );
}
