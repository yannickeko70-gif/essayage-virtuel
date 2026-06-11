import { Link } from "react-router-dom";

export default function Footer() {
  const year = new Date().getFullYear();

  return (
    <footer style={{ background: "#050505", color: "#fff", marginTop: 80 }}>
      <div style={{ maxWidth: 1200, margin: "0 auto", padding: "64px 48px 32px", display: "grid", gridTemplateColumns: "2fr 1fr 1fr 1fr", gap: 40 }}>
        {/* Marque */}
        <div>
          <div style={{ fontFamily: "'DM Sans', sans-serif", fontSize: 28, fontWeight: 900, letterSpacing: 4, marginBottom: 16 }}>
            <span style={{ color: "#fff" }}>Try</span><span style={{ color: "#E30613" }}>On</span>
          </div>
          <p style={{ fontSize: 13, color: "rgba(255,255,255,0.5)", lineHeight: 1.7, marginBottom: 24, maxWidth: 260 }}>
            Plateforme e-commerce avec cabine d'essayage virtuelle au Cameroun. Développée sous la charte CFPD-ISGD.
          </p>
        </div>

        {/* Boutique */}
        <div>
          <div style={{ fontSize: 11, fontWeight: 600, letterSpacing: "2px", textTransform: "uppercase", color: "rgba(255,255,255,0.4)", marginBottom: 20 }}>
            Boutique
          </div>
          <ul style={{ listStyle: "none", padding: 0, margin: 0, display: "flex", flexDirection: "column", gap: 12 }}>
            {[
              { to: "/catalogue", label: "Nouveautés" },
              { to: "/catalogue?category=femme", label: "Femme" },
              { to: "/catalogue?category=homme", label: "Homme" },
              { to: "/catalogue?category=accessoires", label: "Accessoires" },
              { to: "/catalogue?promo=true", label: "Promotions" },
            ].map((l) => (
              <li key={l.to}>
                <Link to={l.to} style={{ fontSize: 13, color: "rgba(255,255,255,0.55)", textDecoration: "none" }}>
                  {l.label}
                </Link>
              </li>
            ))}
          </ul>
        </div>

        {/* Services */}
        <div>
          <div style={{ fontSize: 11, fontWeight: 600, letterSpacing: "2px", textTransform: "uppercase", color: "rgba(255,255,255,0.4)", marginBottom: 20 }}>
            Services
          </div>
          <ul style={{ listStyle: "none", padding: 0, margin: 0, display: "flex", flexDirection: "column", gap: 12 }}>
            {[
              { to: "/essayage", label: "Essayage Virtuel" },
              { to: "/tailles", label: "Guide des tailles" },
              { to: "/livraison", label: "Livraison" },
              { to: "/retours", label: "Retours" },
            ].map((l) => (
              <li key={l.to}>
                <Link to={l.to} style={{ fontSize: 13, color: "rgba(255,255,255,0.55)", textDecoration: "none" }}>
                  {l.label}
                </Link>
              </li>
            ))}
          </ul>
        </div>

        {/* Contact */}
        <div>
          <div style={{ fontSize: 11, fontWeight: 600, letterSpacing: "2px", textTransform: "uppercase", color: "rgba(255,255,255,0.4)", marginBottom: 20 }}>
            Contact
          </div>
          <ul style={{ listStyle: "none", padding: 0, margin: 0, display: "flex", flexDirection: "column", gap: 12 }}>
            <li style={{ fontSize: 13, color: "rgba(255,255,255,0.55)" }}>cfpd-isgd@edu.cm</li>
            <li style={{ fontSize: 13, color: "rgba(255,255,255,0.55)" }}>+237 6XX XXX XXX</li>
            <li style={{ fontSize: 13, color: "rgba(255,255,255,0.55)" }}>Douala, Cameroun</li>
          </ul>
        </div>
      </div>

      {/* Bas */}
      <div style={{ borderTop: "1px solid rgba(255,255,255,0.08)", padding: "20px 48px", maxWidth: 1200, margin: "0 auto", display: "flex", justifyContent: "space-between", alignItems: "center" }}>
        <span style={{ fontSize: 12, color: "rgba(255,255,255,0.3)" }}>
          © {year} TryOn — Application de mode africaine et cabine d'essayage virtuelle. Tous droits réservés.
        </span>
        <span style={{ fontSize: 12, color: "rgba(255,255,255,0.3)" }}>
          Politique de confidentialité · CGV
        </span>
      </div>
    </footer>
  );
}