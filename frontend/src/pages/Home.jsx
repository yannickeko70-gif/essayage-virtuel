import { Link, useNavigate } from 'react-router-dom';

const PRODUCTS = [
  { id:1, emoji:'👗', name:'Robe Évasée Florale',   brand:'Collection Printemps', price:'15 000', badge:'Nouveau', badgeType:'new', bg:'linear-gradient(160deg,#f5f0e8,#ede5d8)',   colors:['#c9a96e','#c4573a','#2d2420'] },
  { id:2, emoji:'🧥', name:'Veste Structurée',       brand:'Élégance Moderne',     price:'19 500', old:'25 000',   bg:'linear-gradient(160deg,#e8e0d5,#d8cfc0)',   colors:['#2d2420','#7a8c6e'] },
  { id:3, emoji:'👕', name:'Chemise Lin Premium',    brand:'Casual Chic',          price:'9 800',  badge:'-20%',   bg:'linear-gradient(160deg,#dce8e0,#c8ddd2)',   colors:['#7a8c6e','#f5f0e8','#c4573a'] },
  { id:4, emoji:'👔', name:'Ensemble Tailleur',      brand:'Business Style',       price:'32 000', badge:'Nouveau', badgeType:'new', bg:'linear-gradient(160deg,#e8dce0,#d8c8cc)', colors:['#1a1410','#c9a96e'] },
];

const STATS = [
  { num:'2', sup:'K+', label:'Articles disponibles' },
  { num:'98', sup:'%', label:'Satisfaction clients' },
  { num:'3', sup:'s', label:'Temps d\'essayage moyen' },
];

const IA_FEATURES = [
  { icon:'🎯', title:'Précision 3D', desc:'33 points du corps détectés en temps réel' },
  { icon:'⚡', title:'Temps réel',   desc:'Rendu instantané sans délai de chargement' },
  { icon:'🧠', title:'IA adaptative', desc:'Apprentissage de vos préférences de style' },
  { icon:'🌍', title:'Mode africaine', desc:'Catalogue wax et tissus traditionnels inclus' },
];

export default function Home() {
  const navigate = useNavigate();

  return (
    <div style={{ paddingTop: 64 }}>

      {/* ── HERO ── */}
      <section style={{
        display: 'grid', gridTemplateColumns: '1fr 1fr',
        minHeight: 'calc(100vh - 64px)', overflow: 'hidden',
      }}>
        {/* Texte */}
        <div style={{
          display: 'flex', flexDirection: 'column', justifyContent: 'center',
          padding: '92px 72px 84px 86px', background: '#F9F9F9',
        }}>
          <div style={{
            display: 'inline-flex', alignItems: 'center', gap: 8,
            background: 'rgba(47,83,120,.10)', color: '#2F5378',
            border: '1px solid rgba(47,83,120,.18)',
            fontSize: 11, fontWeight: 500, letterSpacing: 2,
            textTransform: 'uppercase', padding: '6px 14px', borderRadius: 100,
            width: 'fit-content', marginBottom: 32,
          }}>
            <span style={{ color: '#B83228' }}>✦</span> Nouvelle expérience mode
          </div>

          <h1 style={{
            fontFamily: "'Cormorant Garamond', serif",
            fontSize: 'clamp(48px,6vw,80px)', fontWeight: 300,
            lineHeight: 1.05, letterSpacing: '-0.035em',
            color: '#151515', marginBottom: 24,
          }}>
            La mode à votre<br />
            <em style={{ fontStyle: 'italic', color: '#2F5378' }}>image, virtuelle</em>
          </h1>

          <p style={{
            fontSize: 16, color: '#66707A', maxWidth: 430,
            lineHeight: 1.8, marginBottom: 48,
          }}>
            Essayez des centaines de vêtements sans quitter votre maison. Notre cabine virtuelle utilise l'IA pour adapter chaque pièce à votre morphologie.
          </p>

          <div style={{ display: 'flex', gap: 16, flexWrap: 'wrap' }}>
            <Link to="/catalogue" style={{
              display: 'inline-flex', alignItems: 'center', gap: 12,
              background: 'linear-gradient(135deg,#B83228,#8E241D)',
              color: '#fff', fontSize: 13, fontWeight: 500,
              letterSpacing: '1.5px', textTransform: 'uppercase',
              padding: '16px 32px', borderRadius: 'var(--r)',
              border: 'none', textDecoration: 'none',
            }}>
              Explorer la boutique
              <svg width="16" height="16" fill="none" stroke="currentColor" strokeWidth="2" viewBox="0 0 24 24">
                <path d="M5 12h14M12 5l7 7-7 7" />
              </svg>
            </Link>
            <Link to="/cabine" style={{
              display: 'inline-flex', alignItems: 'center', gap: 10,
              background: 'transparent', color: 'var(--ink)',
              fontSize: 13, fontWeight: 500, letterSpacing: '1.5px',
              textTransform: 'uppercase', padding: '15px 30px',
              borderRadius: 'var(--r)', border: '1.5px solid rgba(26,26,26,.15)',
              textDecoration: 'none',
            }}>👗 Essayer maintenant</Link>
          </div>
        </div>

        {/* Visuel avec image background */}
        <div style={{ position: 'relative', overflow: 'hidden' }}>
          <div style={{
            position: 'absolute', inset: 0,
            background: `
              linear-gradient(125deg,rgba(26,26,26,.76),rgba(47,83,120,.38) 47%,rgba(181,48,37,.20)),
              url("https://images.unsplash.com/photo-1496747611176-843222e1e57c?auto=format&fit=crop&w=1500&q=88") center/cover no-repeat
            `,
            filter: 'saturate(.92) contrast(1.05)',
            transform: 'scale(1.04)',
          }} />
          <div style={{
            position: 'relative', zIndex: 1,
            width: '100%', height: '100%',
            display: 'flex', flexDirection: 'column',
            alignItems: 'center', justifyContent: 'center',
            gap: 12, color: 'rgba(255,255,255,0.15)',
            fontFamily: "'Cormorant Garamond', serif",
            fontSize: 120, letterSpacing: -4,
          }}>
            <span style={{ opacity: .16, color: '#fff', textShadow: '0 30px 80px rgba(0,0,0,.35)' }}>TryOn</span>
            <span style={{ fontSize: 14, letterSpacing: 1, opacity: .5, textAlign: 'center', padding: '0 40px' }}>
              Application de mode africaine et cabine d'essayage virtuelle
            </span>
          </div>
          {/* Badge */}
          <div style={{
            position: 'absolute', bottom: 40, left: 40, zIndex: 2,
            background: 'rgba(250,247,242,0.95)',
            borderRadius: 18, padding: '16px 20px',
            display: 'flex', alignItems: 'center', gap: 12,
            boxShadow: '0 14px 42px rgba(26,26,26,0.13)',
          }}>
            <div style={{
              width: 40, height: 40, background: '#E6EEF6',
              borderRadius: '50%', display: 'flex', alignItems: 'center',
              justifyContent: 'center', fontSize: 18,
            }}>✨</div>
            <div style={{ fontSize: 12 }}>
              <strong style={{ display: 'block', fontSize: 14, fontWeight: 500 }}>IA Essayage</strong>
              Résultat en 2 secondes
            </div>
          </div>
        </div>
      </section>

      {/* ── STATS ── */}
      <div style={{
        display: 'grid', gridTemplateColumns: 'repeat(3,1fr)',
        maxWidth: 1180, margin: '46px auto 24px',
        padding: '0 28px', gap: 18,
      }}>
        {STATS.map(({ num, sup, label }) => (
          <div key={label} style={{
            position: 'relative', overflow: 'hidden',
            minHeight: 158, border: '1px solid rgba(26,26,26,.10)',
            borderRadius: 24,
            background: 'linear-gradient(145deg,rgba(255,255,255,.92),rgba(240,235,226,.78))',
            boxShadow: '0 16px 40px rgba(26,26,26,.08)',
            padding: '32px 40px', display: 'flex', flexDirection: 'column', gap: 4,
            transition: 'transform .28s, box-shadow .28s',
          }}>
            <div style={{
              fontFamily: "'Cormorant Garamond', serif",
              fontSize: 52, fontWeight: 300, lineHeight: 1, color: 'var(--ink)',
            }}>
              {num}<span style={{ color: '#B83228' }}>{sup}</span>
            </div>
            <div style={{
              fontSize: 12, color: '#6d6258',
              letterSpacing: 1, textTransform: 'uppercase', fontWeight: 600,
              marginTop: 18,
            }}>{label}</div>
          </div>
        ))}
      </div>

      {/* ── NOUVEAUTÉS ── */}
      <section style={{ padding: '80px 80px' }}>
        <div style={{ marginBottom: 48 }}>
          <span style={{
            fontSize: 11, fontWeight: 500, letterSpacing: 2,
            textTransform: 'uppercase', color: '#355C86',
            display: 'block', marginBottom: 12,
          }}>Nouveautés</span>
          <h2 style={{
            fontFamily: "'Cormorant Garamond', serif",
            fontSize: 'clamp(32px,4vw,52px)', fontWeight: 300, lineHeight: 1.1,
          }}>Pièces <em style={{ fontStyle: 'italic', color: '#B83228' }}>incontournables</em></h2>
        </div>

        {/* Filtres */}
        <div style={{ display: 'flex', gap: 12, marginBottom: 40, flexWrap: 'wrap', alignItems: 'center' }}>
          {['Tout','Femme','Homme','Enfant','Accessoires'].map((f, i) => (
            <button key={f} style={{
              padding: '8px 20px', borderRadius: 100,
              fontSize: 12, fontWeight: 500, letterSpacing: 1, textTransform: 'uppercase',
              border: `1.5px solid ${i === 0 ? 'var(--ink)' : 'rgba(26,26,26,.11)'}`,
              background: i === 0 ? 'var(--ink)' : 'transparent',
              color: i === 0 ? '#F9F9F9' : 'var(--muted)',
              cursor: 'pointer',
            }}>{f}</button>
          ))}
          <select style={{
            marginLeft: 'auto', padding: '8px 16px',
            border: '1.5px solid rgba(26,26,26,.11)', borderRadius: 10,
            fontFamily: "'DM Sans', sans-serif", fontSize: 13,
            background: '#fff', cursor: 'pointer', outline: 'none',
          }}>
            <option>Popularité</option>
            <option>Prix croissant</option>
            <option>Nouveautés</option>
          </select>
        </div>

        {/* Grille produits */}
        <div style={{ display: 'grid', gridTemplateColumns: 'repeat(4,1fr)', gap: 24 }}>
          {PRODUCTS.map(p => (
            <div key={p.id}
              onClick={() => navigate('/produit')}
              style={{
                borderRadius: 18, overflow: 'hidden', background: '#fff',
                boxShadow: '0 2px 12px rgba(26,20,16,.06)',
                transition: 'all .25s', cursor: 'pointer',
                border: '1px solid rgba(26,26,26,.10)',
                borderTop: '3px solid rgba(91,127,166,.42)',
              }}>
              <div style={{ aspectRatio: '3/4', position: 'relative', background: p.bg }}>
                <div style={{
                  width: '100%', height: '100%',
                  display: 'flex', alignItems: 'center', justifyContent: 'center',
                  fontSize: 72, opacity: .3,
                }}>{p.emoji}</div>

                {p.badge && (
                  <span style={{
                    position: 'absolute', top: 12, left: 12,
                    background: p.badgeType === 'new' ? 'rgba(91,127,166,.16)' : '#B83228',
                    color: p.badgeType === 'new' ? '#355C86' : '#fff',
                    fontSize: 10, fontWeight: 600, letterSpacing: 1,
                    textTransform: 'uppercase', padding: '4px 10px', borderRadius: 100,
                  }}>{p.badge}</span>
                )}

                <button
                  onClick={e => { e.stopPropagation(); navigate('/cabine'); }}
                  style={{
                    position: 'absolute', bottom: 12, right: 12,
                    background: 'rgba(250,247,242,.95)', border: 'none', cursor: 'pointer',
                    padding: '8px 14px', borderRadius: 100,
                    fontSize: 11, fontWeight: 600, letterSpacing: 1, textTransform: 'uppercase',
                    color: 'var(--ink)', display: 'flex', alignItems: 'center', gap: 6,
                  }}>✨ Essayer</button>
              </div>
              <div style={{ padding: '16px 18px' }}>
                <div style={{ fontSize: 14, fontWeight: 500, marginBottom: 4 }}>{p.name}</div>
                <div style={{ fontSize: 12, color: 'var(--muted)', marginBottom: 8 }}>{p.brand}</div>
                <div style={{ display: 'flex', alignItems: 'center', justifyContent: 'space-between' }}>
                  <div style={{ fontFamily: "'Cormorant Garamond', serif", fontSize: 20, fontWeight: 600 }}>
                    {p.old && <span style={{ fontSize: 14, color: 'var(--muted)', textDecoration: 'line-through', marginRight: 6 }}>{p.old}</span>}
                    {p.price} <small style={{ fontSize: 12, fontWeight: 300 }}>FCFA</small>
                  </div>
                  <div style={{ display: 'flex', gap: 4 }}>
                    {p.colors.map((c, j) => (
                      <div key={j} style={{
                        width: 14, height: 14, borderRadius: '50%', background: c,
                        border: j === 0 ? '2px solid var(--ink)' : '2px solid transparent',
                      }} />
                    ))}
                  </div>
                </div>
              </div>
            </div>
          ))}
        </div>
      </section>

      {/* ── SECTION IA ── */}
      <section style={{
        background: 'var(--ink)', margin: 0, padding: 80, color: 'var(--cream)',
      }}>
        <div style={{
          maxWidth: 1000, margin: '0 auto',
          display: 'grid', gridTemplateColumns: '1fr 1fr', gap: 80, alignItems: 'center',
        }}>
          <div>
            <span style={{
              fontSize: 11, letterSpacing: 2, textTransform: 'uppercase',
              color: '#355C86', display: 'block', marginBottom: 16,
            }}>Technologie IA</span>
            <h2 style={{
              fontFamily: "'Cormorant Garamond', serif",
              fontSize: 48, fontWeight: 300, lineHeight: 1.1, marginBottom: 24,
            }}>
              Essayage <em style={{ fontStyle: 'italic', color: '#E6EEF6' }}>intelligent</em><br />
              en temps réel
            </h2>
            <p style={{
              color: 'rgba(255,255,255,0.6)', fontSize: 15, lineHeight: 1.8, marginBottom: 32,
            }}>
              Notre IA analyse votre morphologie via MediaPipe pour superposer chaque vêtement avec une précision millimétrique. Résultat en moins de 3 secondes.
            </p>
            <Link to="/cabine" style={{
              display: 'inline-flex', alignItems: 'center', gap: 12,
              background: '#355C86', color: 'var(--ink)',
              fontSize: 13, fontWeight: 500, letterSpacing: '1.5px',
              textTransform: 'uppercase', padding: '16px 32px',
              borderRadius: 'var(--r)', textDecoration: 'none', color: '#fff',
            }}>Essayer la cabine →</Link>
          </div>
          <div style={{ display: 'grid', gridTemplateColumns: '1fr 1fr', gap: 16 }}>
            {IA_FEATURES.map(({ icon, title, desc }, i) => (
              <div key={title} style={{
                background: i === 1
                  ? 'rgba(201,169,110,0.08)' : 'rgba(255,255,255,0.04)',
                border: `1px solid ${i === 1 ? 'rgba(201,169,110,0.15)' : 'rgba(255,255,255,0.08)'}`,
                borderRadius: 12, padding: 24,
              }}>
                <div style={{ fontSize: 32, marginBottom: 12 }}>{icon}</div>
                <div style={{ fontSize: 14, fontWeight: 500, marginBottom: 6 }}>{title}</div>
                <div style={{ fontSize: 12, color: 'rgba(255,255,255,0.4)', lineHeight: 1.6 }}>{desc}</div>
              </div>
            ))}
          </div>
        </div>
      </section>

      {/* ── FOOTER ── */}
      <footer style={{
        background: 'linear-gradient(180deg,#1A1A1A,#26384D)',
        color: 'rgba(255,255,255,0.45)',
        padding: '64px 80px 36px',
      }}>
        <div style={{
          display: 'grid', gridTemplateColumns: '2fr 1fr 1fr 1fr', gap: 48, marginBottom: 48,
        }}>
          <div>
            <div style={{
              fontFamily: "'Cormorant Garamond', serif", fontSize: 32, fontWeight: 600,
              color: '#fff', letterSpacing: 4, marginBottom: 16,
            }}>
              TryOn<span style={{ color: '#C0392B' }}>.</span>
            </div>
            <p style={{ fontSize: 13, lineHeight: 1.9, maxWidth: 260 }}>
              Plateforme e-commerce de mode avec essayage virtuel IA. Créée par les stylistes CFPD-ISGD, Douala, Cameroun.
            </p>
          </div>
          {[
            ['Boutique', ['Femme', 'Homme', 'Enfant', 'Accessoires', 'Nouveautés']],
            ['Aide', ['Livraison', 'Retours', 'Tailles', 'Contact', 'FAQ']],
            ['Paiement', ['Orange Money', 'MTN MoMo', 'Visa / MasterCard', 'PayDunya']],
          ].map(([title, items]) => (
            <div key={title}>
              <div style={{
                fontSize: 11, fontWeight: 600, letterSpacing: 2,
                textTransform: 'uppercase', color: 'rgba(255,255,255,.6)',
                marginBottom: 20,
              }}>{title}</div>
              <ul style={{ listStyle: 'none', display: 'flex', flexDirection: 'column', gap: 10 }}>
                {items.map(item => (
                  <li key={item}>
                    <a href="#" style={{
                      fontSize: 13, color: 'rgba(255,255,255,.35)',
                      textDecoration: 'none', transition: 'color .2s',
                    }}>{item}</a>
                  </li>
                ))}
              </ul>
            </div>
          ))}
        </div>
        <div style={{
          display: 'flex', justifyContent: 'space-between',
          paddingTop: 24, borderTop: '1px solid rgba(255,255,255,.07)', fontSize: 11,
        }}>
          <span>© 2025 TryOn · CFPD-ISGD Cameroun</span>
          <span>Mentions légales · Confidentialité · CGV</span>
        </div>
      </footer>
    </div>
  );
}