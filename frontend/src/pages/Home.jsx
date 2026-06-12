import React from 'react';
import { Link } from 'react-router-dom';
import { products, productImages } from '../services/productService';

/* ── Tokens exacts de la maquette ── */
const T = {
  ink: '#1A1A1A',
  cream: '#F9F9F9',
  warm: '#F1F5F9',
  white: '#FFFFFF',
  red: '#C0392B',
  redDark: '#8E241D',
  blue: '#5B7FA6',
  blueDark: '#355C86',
  blueNavy: '#26384D',
  blueLight: '#E6EEF6',
  muted: '#6A6F78',
  border: 'rgba(26,26,26,0.105)',
};

export default function Home() {
  const featured = products.slice(0, 4);
  return (
    <div style={{ paddingTop: '72px' }}>

      {/* ── HERO ── */}
      <section style={{
        minHeight: 'calc(100vh - 72px)',
        display: 'grid', gridTemplateColumns: '1fr 1fr', overflow: 'hidden',
      }}>
        <div style={{
          display: 'flex', flexDirection: 'column', justifyContent: 'center',
          padding: '80px 64px 80px 80px', background: T.cream,
        }}>
          {/* Tag */}
          <span style={{
            display: 'inline-flex', alignItems: 'center', gap: '8px',
            background: 'rgba(91,127,166,0.12)', color: T.blueNavy,
            border: '1px solid rgba(91,127,166,0.18)',
            fontSize: '11px', fontWeight: 500, letterSpacing: '2px',
            textTransform: 'uppercase', padding: '6px 14px', borderRadius: '100px',
            width: 'fit-content', marginBottom: '32px',
          }}>
            <span style={{ color: T.red }}>✦</span> Essayage virtuel par IA
          </span>

          <h1 style={{
            fontFamily: "'Cormorant Garamond', serif",
            fontSize: 'clamp(48px,6vw,80px)', fontWeight: 300,
            lineHeight: 1.05, marginBottom: '24px', color: T.ink,
          }}>
            La mode africaine<br />
            <em style={{ fontStyle: 'italic', color: T.red }}>réinventée</em><br />
            pour vous
          </h1>

          <p style={{ fontSize: '16px', color: T.muted, maxWidth: '400px', lineHeight: 1.8, marginBottom: '48px' }}>
            Essayez virtuellement des tenues wax, bogolan et ankara grâce à notre cabine IA. Commandez avec confiance.
          </p>

          <div style={{ display: 'flex', gap: '16px', flexWrap: 'wrap' }}>
            <Link to="/tryon" className="btn-primary">
              Essayer maintenant
              <svg width="16" height="16" viewBox="0 0 24 24" fill="none" stroke="currentColor" strokeWidth="2"><path d="M5 12h14M12 5l7 7-7 7"/></svg>
            </Link>
            <Link to="/shop" className="btn-outline">Voir le catalogue</Link>
          </div>

          {/* Stats */}
          <div style={{
            display: 'flex', gap: '40px', marginTop: '64px',
            paddingTop: '40px', borderTop: `1px solid ${T.border}`,
          }}>
            {[
              { val: '2 400+', label: 'Tenues disponibles' },
              { val: '98%', label: 'Satisfaction client' },
              { val: '12k+', label: 'Essayages réalisés' },
            ].map(s => (
              <div key={s.label}>
                <div style={{
                  fontFamily: "'Cormorant Garamond', serif",
                  fontSize: '36px', fontWeight: 600, color: T.red, lineHeight: 1,
                }}>
                  <span>{s.val}</span>
                </div>
                <div style={{ fontSize: '12px', color: T.muted, letterSpacing: '1px', marginTop: '6px' }}>{s.label}</div>
              </div>
            ))}
          </div>
        </div>

        {/* Image hero droite */}
        <div style={{ position: 'relative', overflow: 'hidden' }}>
          <div style={{
            position: 'absolute', inset: 0,
            backgroundImage: `url(${productImages[0]})`,
            backgroundSize: 'cover', backgroundPosition: 'center',
          }} />
          <div style={{
            position: 'absolute', inset: 0,
            background: 'linear-gradient(135deg, rgba(26,26,26,0.12) 0%, transparent 60%)',
          }} />
          {/* Badge IA flottant */}
          <div style={{
            position: 'absolute', bottom: '40px', left: '40px',
            background: 'rgba(250,247,242,0.96)',
            borderRadius: '18px', padding: '16px 20px',
            display: 'flex', alignItems: 'center', gap: '12px',
            boxShadow: '0 18px 50px rgba(26,26,26,0.13)',
          }}>
            <div style={{
              width: '40px', height: '40px', background: T.blueLight,
              borderRadius: '50%', display: 'flex', alignItems: 'center', justifyContent: 'center',
              fontSize: '18px',
            }}>✨</div>
            <div>
              <div style={{ fontSize: '11px', color: T.muted, letterSpacing: '1.5px', textTransform: 'uppercase' }}>Score IA</div>
              <div style={{
                fontFamily: "'Cormorant Garamond', serif",
                fontSize: '28px', fontWeight: 600, color: T.red, lineHeight: 1,
              }}>94%</div>
              <div style={{ fontSize: '11px', color: T.muted, marginTop: '2px' }}>Compatibilité morphologique</div>
            </div>
          </div>
        </div>
      </section>

      {/* ── CATÉGORIES ── */}
      <section style={{ padding: '96px 80px', background: T.cream }}>
        <div style={{ textAlign: 'center', marginBottom: '56px' }}>
          <div style={{ fontSize: '11px', fontWeight: 500, letterSpacing: '3px', textTransform: 'uppercase', color: T.blueDark, marginBottom: '12px' }}>
            Collections
          </div>
          <h2 style={{
            fontFamily: "'Cormorant Garamond', serif",
            fontSize: 'clamp(32px,4vw,52px)', fontWeight: 300, color: T.ink,
          }}>
            Explorez nos <em style={{ fontStyle: 'italic', color: T.red }}>catégories</em>
          </h2>
        </div>
        <div style={{ display: 'grid', gridTemplateColumns: 'repeat(4,1fr)', gap: '20px' }}>
          {[
            { label: 'Femme', sub: '840 articles', img: productImages[0] },
            { label: 'Homme', sub: '620 articles', img: productImages[3] },
            { label: 'Enfant', sub: '310 articles', img: productImages[6] },
            { label: 'Accessoires', sub: '180 articles', img: productImages[7] },
          ].map((cat, i) => (
            <Link to="/shop" key={i} style={{ textDecoration: 'none' }}>
              <div style={{ position: 'relative', borderRadius: '18px', overflow: 'hidden', height: '320px', cursor: 'pointer', transition: 'transform .3s ease, box-shadow .3s ease' }}
                onMouseEnter={e => { e.currentTarget.style.transform = 'translateY(-6px)'; e.currentTarget.style.boxShadow = '0 20px 50px rgba(26,26,26,0.15)'; }}
                onMouseLeave={e => { e.currentTarget.style.transform = 'none'; e.currentTarget.style.boxShadow = 'none'; }}>
                <div style={{ position: 'absolute', inset: 0, backgroundImage: `url(${cat.img})`, backgroundSize: 'cover', backgroundPosition: 'center' }} />
                <div style={{ position: 'absolute', inset: 0, background: 'linear-gradient(to top, rgba(26,26,26,0.75) 0%, transparent 55%)' }} />
                <div style={{ position: 'absolute', bottom: '24px', left: '24px' }}>
                  <div style={{ color: '#fff', fontSize: '20px', fontFamily: "'Cormorant Garamond', serif", fontWeight: 600 }}>{cat.label}</div>
                  <div style={{ color: 'rgba(255,255,255,0.7)', fontSize: '12px', marginTop: '4px' }}>{cat.sub}</div>
                </div>
              </div>
            </Link>
          ))}
        </div>
      </section>

      {/* ── PRODUITS VEDETTES ── */}
      <section style={{ padding: '96px 80px', background: T.warm }}>
        <div style={{ display: 'flex', justifyContent: 'space-between', alignItems: 'flex-end', marginBottom: '48px' }}>
          <div>
            <div style={{ fontSize: '11px', fontWeight: 500, letterSpacing: '3px', textTransform: 'uppercase', color: T.blueDark, marginBottom: '8px' }}>Sélection</div>
            <h2 style={{ fontFamily: "'Cormorant Garamond', serif", fontSize: 'clamp(28px,3.5vw,44px)', fontWeight: 300, color: T.ink }}>
              Produits <em style={{ fontStyle: 'italic', color: T.red }}>vedettes</em>
            </h2>
          </div>
          <Link to="/shop" style={{ fontSize: '13px', color: T.blueDark, textDecoration: 'none', fontWeight: 600, letterSpacing: '1px' }}>
            Voir tout →
          </Link>
        </div>
        <div style={{ display: 'grid', gridTemplateColumns: 'repeat(4,1fr)', gap: '24px' }}>
          {featured.map((p, i) => <ProductCard key={p.id} product={p} img={productImages[i]} />)}
        </div>
      </section>

      {/* ── BANNIÈRE IA ── */}
      <section style={{
        margin: '0 80px 96px',
        background: 'linear-gradient(180deg, #1A1A1A 0%, #26384D 100%)',
        borderRadius: '28px', padding: '80px',
        display: 'grid', gridTemplateColumns: '1fr 1fr', gap: '60px', alignItems: 'center',
      }}>
        <div>
          <span style={{
            display: 'inline-flex', alignItems: 'center', gap: '8px',
            background: 'rgba(192,57,43,0.24)', color: '#f5b7b1',
            fontSize: '11px', letterSpacing: '2px', textTransform: 'uppercase',
            padding: '6px 14px', borderRadius: '100px', marginBottom: '28px',
          }}>✦ Technologie IA</span>
          <h2 style={{
            fontFamily: "'Cormorant Garamond', serif",
            fontSize: 'clamp(32px,4vw,52px)', fontWeight: 300,
            color: T.cream, lineHeight: 1.1, marginBottom: '20px',
          }}>
            Votre cabine d'essayage<br />
            <em style={{ fontStyle: 'italic', color: '#f5b7b1' }}>virtuelle</em>
          </h2>
          <p style={{ color: 'rgba(249,249,249,0.65)', lineHeight: 1.8, marginBottom: '36px', maxWidth: '380px' }}>
            Uploadez votre photo, notre IA analyse votre morphologie et vous propose les tailles et coupes les plus adaptées.
          </p>
          <Link to="/tryon" style={{
            display: 'inline-flex', alignItems: 'center', gap: '10px',
            background: 'linear-gradient(135deg, #C0392B, #8E241D)',
            color: '#fff', fontSize: '13px', fontWeight: 500,
            letterSpacing: '1.5px', textTransform: 'uppercase',
            padding: '16px 32px', borderRadius: '10px', textDecoration: 'none',
            boxShadow: '0 14px 28px rgba(192,57,43,0.25)',
          }}>Essayer gratuitement →</Link>
        </div>
        <div style={{ display: 'flex', flexDirection: 'column', gap: '24px' }}>
          {[
            { n: '01', t: 'Uploadez votre photo', d: 'Une photo de face en tenue ajustée suffit.' },
            { n: '02', t: 'Analyse morphologique', d: 'Notre IA détecte vos mesures en quelques secondes.' },
            { n: '03', t: 'Score de compatibilité', d: "Chaque vêtement reçoit un score d'adéquation." },
            { n: '04', t: 'Commandez en confiance', d: 'Ajustements de taille inclus automatiquement.' },
          ].map(s => (
            <div key={s.n} style={{ display: 'flex', gap: '20px', alignItems: 'flex-start' }}>
              <span style={{ fontFamily: "'Cormorant Garamond', serif", fontSize: '28px', fontWeight: 600, color: T.red, lineHeight: 1, minWidth: '40px' }}>{s.n}</span>
              <div>
                <div style={{ color: T.cream, fontWeight: 500, marginBottom: '4px' }}>{s.t}</div>
                <div style={{ color: 'rgba(249,249,249,0.55)', fontSize: '13px', lineHeight: 1.6 }}>{s.d}</div>
              </div>
            </div>
          ))}
        </div>
      </section>

    </div>
  );
}

function ProductCard({ product, img }) {
  const [hovered, setHovered] = React.useState(false);
  const T = { red: '#C0392B', blueDark: '#355C86', blue: '#5B7FA6', blueLight: '#E6EEF6', blueNavy: '#26384D', ink: '#1A1A1A', muted: '#6A6F78', border: 'rgba(26,26,26,0.105)' };
  return (
    <Link to={`/product/${product.id}`} style={{ textDecoration: 'none', color: 'inherit' }}>
      <div onMouseEnter={() => setHovered(true)} onMouseLeave={() => setHovered(false)} style={{
        borderRadius: '14px', overflow: 'hidden', background: '#fff',
        border: `1px solid ${hovered ? 'rgba(91,127,166,0.32)' : T.border}`,
        boxShadow: hovered ? '0 22px 52px rgba(26,26,26,0.13)' : '0 12px 34px rgba(26,26,26,0.075)',
        transition: 'all .3s ease',
        transform: hovered ? 'translateY(-4px)' : 'none',
      }}>
        <div style={{ position: 'relative', height: '280px', overflow: 'hidden' }}>
          <div style={{
            position: 'absolute', inset: 0,
            backgroundImage: `url(${img})`,
            backgroundSize: 'cover', backgroundPosition: 'center',
            background: hovered ? 'linear-gradient(145deg,#F8F9FB,#E9EFF6)' : undefined,
            transition: 'transform .4s ease',
            transform: hovered ? 'scale(1.05)' : 'scale(1)',
          }} />
          {product.tag && (
            <span style={{
              position: 'absolute', top: '14px', left: '14px',
              background: product.tag === 'Nouveau' ? 'rgba(91,127,166,0.14)' : T.red,
              color: product.tag === 'Nouveau' ? T.blueDark : '#fff',
              fontSize: '10px', fontWeight: 600, letterSpacing: '1px',
              padding: '4px 10px', borderRadius: '100px',
            }}>{product.tag}</span>
          )}
          {hovered && (
            <Link to="/tryon" onClick={e => e.stopPropagation()} style={{
              position: 'absolute', bottom: '14px', left: '50%', transform: 'translateX(-50%)',
              background: T.blueLight, color: T.blueNavy,
              fontSize: '11px', fontWeight: 600, letterSpacing: '1px', textTransform: 'uppercase',
              padding: '10px 20px', borderRadius: '100px', textDecoration: 'none', whiteSpace: 'nowrap',
              boxShadow: '0 4px 16px rgba(26,26,26,0.12)',
            }}>Essayer virtuellement</Link>
          )}
        </div>
        <div style={{ padding: '16px 18px 20px' }}>
          <div style={{ fontSize: '11px', color: T.blueDark, letterSpacing: '1.5px', textTransform: 'uppercase', marginBottom: '4px', fontWeight: 500 }}>{product.brand}</div>
          <div style={{ fontSize: '15px', fontWeight: 500, color: T.ink, marginBottom: '12px' }}>{product.name}</div>
          <div style={{ display: 'flex', justifyContent: 'space-between', alignItems: 'center' }}>
            <div>
              {product.old && <span style={{ fontSize: '12px', color: T.muted, textDecoration: 'line-through', marginRight: '8px' }}>{product.old.toLocaleString()} FCFA</span>}
              <span style={{ fontSize: '15px', fontWeight: 600, color: T.ink }}>{product.price.toLocaleString()} <small style={{ fontSize: '11px', fontWeight: 400 }}>FCFA</small></span>
            </div>
            <div style={{ display: 'flex', gap: '6px' }}>
              {product.colors.slice(0, 3).map((c, i) => (
                <div key={i} style={{
                  width: '12px', height: '12px', borderRadius: '50%', background: c,
                  outline: i === 0 ? `2px solid ${T.blueDark}` : 'none',
                  outlineOffset: '2px',
                  border: '1.5px solid rgba(26,26,26,0.15)',
                }} />
              ))}
            </div>
          </div>
        </div>
      </div>
    </Link>
  );
}