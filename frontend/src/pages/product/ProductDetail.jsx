import { useState } from 'react';
import { Link, useNavigate } from 'react-router-dom';
import { useCart } from '../../context/CartContext';

export default function ProductDetail() {
  const [activeThumb, setActiveThumb] = useState(0);
  const [selectedColor, setSelectedColor] = useState('#c9a96e');
  const [selectedSize, setSelectedSize] = useState('M');
  const [added, setAdded] = useState(false);
  const { addToCart } = useCart();
  const navigate = useNavigate();

  const colors = ['#c9a96e','#c4573a','#2d2420','#7a8c6e','#f5f0e8'];
  const sizes = ['XS','S','M','L','XL','XXL'];
  const unavailable = ['XS','XXL'];

  const handleAdd = () => {
    addToCart({ id:1, name:'Robe Évasée Florale', brand:'Collection Printemps', price:15000, emoji:'👗', size:selectedSize, color:selectedColor, qty:1 });
    setAdded(true);
    setTimeout(() => setAdded(false), 2000);
  };

  return (
    <div style={{ paddingTop: 64 }}>
      {/* Breadcrumb */}
      <div style={{ padding:'12px 48px', fontSize:12, color:'#6A6F78', display:'flex', gap:8, borderBottom:'1px solid rgba(26,26,26,.105)', background:'#fff' }}>
        <Link to="/" style={{ color:'#355C86', textDecoration:'none' }}>Accueil</Link>
        <span>›</span>
        <Link to="/catalogue" style={{ color:'#355C86', textDecoration:'none' }}>Catalogue</Link>
        <span>›</span>
        <span>Robe Évasée Florale</span>
      </div>

      <div style={{ display:'grid', gridTemplateColumns:'1fr 1fr', minHeight:'calc(100vh - 104px)' }}>

        {/* Galerie */}
        <div style={{
          position:'sticky', top:64, height:'calc(100vh - 104px)',
          background:'linear-gradient(160deg,#f5f0e8,#ede5d8)',
          display:'flex', flexDirection:'column',
        }}>
          <div style={{
            flex:1, display:'flex', alignItems:'center', justifyContent:'center',
            fontSize:180, opacity:.2, position:'relative',
          }}>
            {['👗','🔍','📐','✨'][activeThumb]}
            <div style={{
              position:'absolute', top:24, right:24,
              background:'#1A1A1A', color:'#F9F9F9',
              padding:'8px 16px', borderRadius:100,
              fontSize:11, fontWeight:600, letterSpacing:'1.5px', textTransform:'uppercase',
              display:'flex', alignItems:'center', gap:6,
            }}>✨ Vue 3D disponible</div>
          </div>
          <div style={{ display:'flex', gap:8, padding:'16px 24px', borderTop:'1px solid rgba(26,26,26,.105)' }}>
            {['👗','🔍','📐','✨'].map((e,i) => (
              <div key={i} onClick={() => setActiveThumb(i)} style={{
                width:72, height:90, borderRadius:10,
                background:'rgba(26,20,16,.08)', cursor:'pointer',
                display:'flex', alignItems:'center', justifyContent:'center',
                fontSize:28,
                opacity: activeThumb === i ? 1 : 0.4,
                border:`2px solid ${activeThumb === i ? '#1A1A1A' : 'transparent'}`,
                transition:'all .2s',
              }}>{e}</div>
            ))}
          </div>
        </div>

        {/* Formulaire */}
        <div style={{ padding:'64px 56px', overflowY:'auto' }}>
          <div style={{ fontSize:11, letterSpacing:2, textTransform:'uppercase', color:'#355C86', marginBottom:8 }}>
            Collection Printemps 2025
          </div>
          <h1 style={{ fontFamily:"'Cormorant Garamond',serif", fontSize:44, fontWeight:300, lineHeight:1.1, marginBottom:12 }}>
            Robe Évasée<br/>Florale
          </h1>
          <div style={{ display:'flex', alignItems:'center', gap:8, marginBottom:24 }}>
            <span style={{ color:'#355C86', fontSize:14, letterSpacing:2 }}>★★★★★</span>
            <span style={{ fontSize:13, color:'#6A6F78' }}>4.8 · 127 avis</span>
          </div>

          <div style={{ marginBottom:32 }}>
            <div style={{ fontFamily:"'Cormorant Garamond',serif", fontSize:36, fontWeight:600 }}>
              <span style={{ fontSize:18, color:'#6A6F78', textDecoration:'line-through', marginRight:10 }}>18 000</span>
              15 000 <small style={{ fontSize:16, fontWeight:300 }}>FCFA</small>
            </div>
            <span style={{ fontSize:12, background:'rgba(184,50,40,.10)', color:'#B83228', padding:'3px 10px', borderRadius:100, fontWeight:600 }}>
              Économisez 3 000 FCFA
            </span>
          </div>

          {/* Couleur */}
          <div style={{ marginBottom:28 }}>
            <div style={{ fontSize:12, fontWeight:500, letterSpacing:'1.5px', textTransform:'uppercase', color:'#6A6F78', marginBottom:12, display:'flex', justifyContent:'space-between' }}>
              Couleur <span style={{ color:'#355C86', textTransform:'none', letterSpacing:0 }}>Or Sable sélectionné</span>
            </div>
            <div style={{ display:'flex', gap:8 }}>
              {colors.map(c => (
                <div key={c} onClick={() => setSelectedColor(c)} style={{
                  width:36, height:36, borderRadius:'50%', background:c,
                  cursor:'pointer', border:c==='#f5f0e8'?'1.5px solid #ddd':'3px solid transparent',
                  outline: selectedColor===c ? '2px solid #B83228' : '2px solid transparent',
                  outlineOffset:3, transition:'all .2s',
                }} />
              ))}
            </div>
          </div>

          {/* Taille */}
          <div style={{ marginBottom:28 }}>
            <div style={{ fontSize:12, fontWeight:500, letterSpacing:'1.5px', textTransform:'uppercase', color:'#6A6F78', marginBottom:12, display:'flex', justifyContent:'space-between' }}>
              Taille <span style={{ color:'#355C86', textTransform:'none', letterSpacing:0, cursor:'pointer' }}>Guide des tailles →</span>
            </div>
            <div style={{ display:'flex', gap:8, flexWrap:'wrap' }}>
              {sizes.map(s => {
                const na = unavailable.includes(s);
                const on = selectedSize === s;
                return (
                  <button key={s} onClick={() => !na && setSelectedSize(s)} style={{
                    width:52, height:52, borderRadius:10,
                    border:`1.5px solid ${on ? '#1A1A1A' : 'rgba(26,26,26,.11)'}`,
                    background: on ? '#1A1A1A' : '#fff',
                    color: on ? '#F9F9F9' : na ? '#ccc' : '#1A1A1A',
                    fontSize:14, fontWeight:500, cursor:na?'not-allowed':'pointer',
                    opacity: na ? 0.4 : 1, transition:'all .2s',
                    textDecoration: na ? 'line-through' : 'none',
                  }}>{s}</button>
                );
              })}
            </div>
          </div>

          {/* Boutons */}
          <button onClick={() => navigate('/cabine')} style={{
            width:'100%', padding:18, borderRadius:10,
            background:'linear-gradient(135deg,#355C86,#26384D)',
            color:'#F9F9F9', border:'none', cursor:'pointer',
            fontSize:13, fontWeight:600, letterSpacing:2, textTransform:'uppercase',
            display:'flex', alignItems:'center', justifyContent:'center', gap:10,
            marginBottom:12, transition:'all .25s',
          }}>
            <span style={{ fontSize:18 }}>✨</span> Essayer Virtuellement
          </button>

          <button onClick={handleAdd} style={{
            width:'100%', padding:18, borderRadius:10,
            background: added ? '#06D6A0' : 'transparent',
            color: added ? '#fff' : 'var(--ink)',
            border:'1.5px solid var(--ink)', cursor:'pointer',
            fontSize:13, fontWeight:500, letterSpacing:2, textTransform:'uppercase',
            transition:'all .25s', marginBottom:24,
          }}>
            {added ? '✓ Ajouté au panier' : 'Ajouter au panier'}
          </button>

          {/* Avantages */}
          <div style={{ display:'flex', flexDirection:'column', gap:10, padding:'20px 0', borderTop:'1px solid rgba(26,26,26,.105)' }}>
            {[
              ['🚚','Livraison rapide à Douala'],
              ['↩️','Retour gratuit sous 30 jours'],
              ['🔒','Paiement sécurisé Orange Money & MTN'],
              ['📦','Expédition sous 24h ouvrées'],
            ].map(([icon,text]) => (
              <div key={text} style={{ display:'flex', alignItems:'center', gap:10, fontSize:13, color:'#6A6F78' }}>
                <span style={{ fontSize:16 }}>{icon}</span>{text}
              </div>
            ))}
          </div>
        </div>
      </div>
    </div>
  );
}