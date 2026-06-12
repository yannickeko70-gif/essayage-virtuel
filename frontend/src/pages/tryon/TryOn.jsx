import React, { useState, useRef } from 'react';
import { Link } from 'react-router-dom';
import { products, productImages } from '../../services/productService';

const T = {
  ink: '#1A1A1A', cream: '#F9F9F9', warm: '#F1F5F9', white: '#FFFFFF',
  red: '#C0392B', redDark: '#8E241D', blue: '#5B7FA6',
  blueDark: '#355C86', blueNavy: '#26384D', blueLight: '#E6EEF6',
  muted: '#6A6F78', border: 'rgba(26,26,26,0.105)',
};

export default function TryOn() {
  const [step, setStep] = useState(1);
  const [photo, setPhoto] = useState(null);
  const [photoPreview, setPhotoPreview] = useState(null);
  const [progress, setProgress] = useState(0);
  const [selectedProduct, setSelectedProduct] = useState(products[0]);
  const [selectedSize, setSelectedSize] = useState('M');
  const [adjustments, setAdjustments] = useState({ shoulders: 0, chest: 0, waist: 0, hips: 0 });
  const fileRef = useRef();

  const handlePhoto = (e) => {
    const file = e.target.files[0];
    if (!file) return;
    setPhoto(file);
    setPhotoPreview(URL.createObjectURL(file));
  };

  const handleDrop = (e) => {
    e.preventDefault();
    const file = e.dataTransfer.files[0];
    if (!file) return;
    setPhoto(file);
    setPhotoPreview(URL.createObjectURL(file));
  };

  const startAnalysis = () => {
    if (!photo) return;
    setStep(2); setProgress(0);
    const iv = setInterval(() => {
      setProgress(p => {
        if (p >= 100) { clearInterval(iv); setStep(3); return 100; }
        return p + 4;
      });
    }, 80);
  };

  const analysisSteps = [
    { label: 'Détection du corps', done: progress >= 25 },
    { label: 'Analyse morphologique', done: progress >= 50 },
    { label: 'Calcul des mensurations', done: progress >= 75 },
    { label: 'Score de compatibilité', done: progress >= 100 },
  ];

  const scores = [
    { product: products[0], score: 94, img: productImages[0] },
    { product: products[1], score: 89, img: productImages[1] },
    { product: products[2], score: 91, img: productImages[2] },
    { product: products[4], score: 87, img: productImages[4] },
  ];

  return (
    <div style={{ paddingTop: '72px', minHeight: '100vh', background: `radial-gradient(circle at 10% 8%, rgba(91,127,166,0.10), transparent 30%), linear-gradient(180deg,#F9F9F9,#F3F6FA)` }}>

      {/* HEADER */}
      <div style={{ padding: '56px 80px 40px', borderBottom: `1px solid ${T.border}` }}>
        <span style={{ fontSize: '11px', fontWeight: 500, letterSpacing: '3px', textTransform: 'uppercase', color: T.blueDark }}>
          <span style={{ color: T.red }}>✦</span> Technologie IA
        </span>
        <h1 style={{ fontFamily: "'Cormorant Garamond', serif", fontSize: 'clamp(36px,5vw,60px)', fontWeight: 300, color: T.ink, marginTop: '10px', lineHeight: 1.1 }}>
          Cabine d'essayage <em style={{ fontStyle: 'italic', color: T.red }}>virtuelle</em>
        </h1>
        <p style={{ color: T.muted, marginTop: '12px', fontSize: '15px', maxWidth: '520px', lineHeight: 1.7 }}>
          Uploadez votre photo et notre IA analyse votre morphologie pour vous recommander les tailles et coupes idéales.
        </p>

        {/* Stepper */}
        <div style={{ display: 'flex', alignItems: 'center', gap: '12px', marginTop: '36px' }}>
          {[{ n: 1, label: 'Photo' }, { n: 2, label: 'Analyse' }, { n: 3, label: 'Résultats' }].map((s, i) => (
            <React.Fragment key={s.n}>
              <div style={{ display: 'flex', alignItems: 'center', gap: '10px' }}>
                <div style={{
                  width: '32px', height: '32px', borderRadius: '50%',
                  background: step >= s.n ? `linear-gradient(135deg, ${T.red}, ${T.redDark})` : T.blueLight,
                  color: step >= s.n ? '#fff' : T.blueDark,
                  display: 'flex', alignItems: 'center', justifyContent: 'center',
                  fontSize: '13px', fontWeight: 700, transition: 'all .3s ease',
                  boxShadow: step >= s.n ? '0 8px 20px rgba(192,57,43,0.20)' : 'none',
                }}>{s.n}</div>
                <span style={{ fontSize: '13px', fontWeight: step === s.n ? 600 : 400, color: step >= s.n ? T.ink : T.muted }}>{s.label}</span>
              </div>
              {i < 2 && <div style={{ height: '2px', width: '48px', background: step > s.n ? `linear-gradient(90deg, ${T.red}, ${T.blueDark})` : T.border, borderRadius: '2px', transition: 'background .3s' }} />}
            </React.Fragment>
          ))}
        </div>
      </div>

      <div style={{ padding: '48px 80px 80px' }}>

        {/* STEP 1 */}
        {step === 1 && (
          <div style={{ display: 'grid', gridTemplateColumns: '1fr 1fr', gap: '48px', alignItems: 'start' }}>
            <div>
              <h2 style={{ fontFamily: "'Cormorant Garamond', serif", fontSize: '28px', fontWeight: 400, marginBottom: '24px' }}>Votre photo</h2>
              <div
                onClick={() => !photo && fileRef.current.click()}
                onDrop={handleDrop} onDragOver={e => e.preventDefault()}
                style={{
                  border: `2px dashed ${photo ? T.red : 'rgba(26,26,26,0.20)'}`,
                  borderRadius: '18px', background: photo ? 'rgba(192,57,43,0.03)' : T.white,
                  minHeight: '380px', display: 'flex', flexDirection: 'column',
                  alignItems: 'center', justifyContent: 'center',
                  cursor: photo ? 'default' : 'pointer',
                  position: 'relative', overflow: 'hidden', transition: 'all .3s ease',
                }}
              >
                {photoPreview ? (
                  <>
                    <img src={photoPreview} alt="preview" style={{ width: '100%', height: '380px', objectFit: 'cover', borderRadius: '16px' }} />
                    <button onClick={() => { setPhoto(null); setPhotoPreview(null); }} style={{
                      position: 'absolute', top: '14px', right: '14px',
                      background: 'rgba(26,26,26,0.7)', color: '#fff', border: 'none',
                      borderRadius: '50%', width: '32px', height: '32px', cursor: 'pointer',
                      fontSize: '16px', display: 'flex', alignItems: 'center', justifyContent: 'center',
                    }}>×</button>
                  </>
                ) : (
                  <div style={{ textAlign: 'center', padding: '40px' }}>
                    <div style={{
                      width: '72px', height: '72px', borderRadius: '50%',
                      background: T.blueLight, display: 'flex', alignItems: 'center', justifyContent: 'center',
                      margin: '0 auto 20px',
                    }}>
                      <svg width="32" height="32" viewBox="0 0 24 24" fill="none" stroke={T.red} strokeWidth="1.5">
                        <path d="M21 15v4a2 2 0 0 1-2 2H5a2 2 0 0 1-2-2v-4"/>
                        <polyline points="17 8 12 3 7 8"/><line x1="12" y1="3" x2="12" y2="15"/>
                      </svg>
                    </div>
                    <p style={{ fontWeight: 500, color: T.ink, marginBottom: '8px' }}>Glissez votre photo ici</p>
                    <p style={{ fontSize: '13px', color: T.muted, marginBottom: '20px' }}>ou cliquez pour parcourir</p>
                    <span style={{ fontSize: '11px', color: T.blueDark, background: T.blueLight, padding: '4px 12px', borderRadius: '100px' }}>
                      JPG, PNG — Max 10 Mo
                    </span>
                  </div>
                )}
              </div>
              <input ref={fileRef} type="file" accept="image/*" onChange={handlePhoto} style={{ display: 'none' }} />
              {photo && (
                <button onClick={startAnalysis} style={{
                  width: '100%', marginTop: '20px',
                  background: `linear-gradient(135deg, ${T.red}, ${T.redDark})`,
                  color: '#fff', border: 'none', borderRadius: '12px',
                  padding: '18px', fontSize: '14px', fontWeight: 500,
                  letterSpacing: '1.5px', textTransform: 'uppercase', cursor: 'pointer',
                  boxShadow: '0 14px 28px rgba(192,57,43,0.18)',
                  display: 'flex', alignItems: 'center', justifyContent: 'center', gap: '10px',
                  transition: 'all .25s ease',
                }}
                  onMouseEnter={e => { e.currentTarget.style.background = `linear-gradient(135deg, ${T.blueDark}, ${T.blueNavy})`; }}
                  onMouseLeave={e => { e.currentTarget.style.background = `linear-gradient(135deg, ${T.red}, ${T.redDark})`; }}
                >
                  Lancer l'analyse IA →
                </button>
              )}
            </div>

            {/* Conseils */}
            <div>
              <h2 style={{ fontFamily: "'Cormorant Garamond', serif", fontSize: '28px', fontWeight: 400, marginBottom: '24px' }}>Conseils pour une bonne photo</h2>
              <div style={{ display: 'flex', flexDirection: 'column', gap: '16px' }}>
                {[
                  { icon: '🧍', title: 'Position de face', desc: 'Tenez-vous debout, bras légèrement écartés du corps.' },
                  { icon: '👕', title: 'Tenue ajustée', desc: 'Portez des vêtements près du corps pour une analyse précise.' },
                  { icon: '💡', title: 'Bonne luminosité', desc: 'Choisissez un fond clair et un éclairage naturel.' },
                  { icon: '📏', title: 'Photo entière', desc: "De la tête aux pieds, avec 10 cm d'espace autour." },
                ].map((tip, i) => (
                  <div key={i} style={{
                    display: 'flex', gap: '16px', alignItems: 'flex-start',
                    background: T.white, borderRadius: '14px',
                    padding: '20px', border: `1px solid ${T.border}`,
                    boxShadow: '0 12px 34px rgba(26,26,26,0.075)',
                  }}>
                    <span style={{ fontSize: '24px' }}>{tip.icon}</span>
                    <div>
                      <div style={{ fontWeight: 500, marginBottom: '4px' }}>{tip.title}</div>
                      <div style={{ fontSize: '13px', color: T.muted, lineHeight: 1.6 }}>{tip.desc}</div>
                    </div>
                  </div>
                ))}
              </div>
              <div style={{
                marginTop: '24px', padding: '24px',
                background: T.blueLight, borderRadius: '14px', textAlign: 'center',
              }}>
                <div style={{ fontSize: '13px', color: T.muted, marginBottom: '12px' }}>Pas de photo ? Utilisez votre webcam</div>
                <button style={{
                  background: `linear-gradient(135deg, ${T.blueDark}, ${T.blueNavy})`,
                  color: '#fff', border: 'none', borderRadius: '10px',
                  padding: '12px 24px', fontSize: '13px', fontWeight: 500, cursor: 'pointer',
                  display: 'inline-flex', alignItems: 'center', gap: '8px',
                }}>
                  <svg width="16" height="16" viewBox="0 0 24 24" fill="none" stroke="currentColor" strokeWidth="2">
                    <path d="M23 7l-7 5 7 5V7z"/><rect x="1" y="5" width="15" height="14" rx="2" ry="2"/>
                  </svg>
                  Activer la webcam
                </button>
              </div>
            </div>
          </div>
        )}

        {/* STEP 2 */}
        {step === 2 && (
          <div style={{ maxWidth: '560px', margin: '0 auto', textAlign: 'center', padding: '40px 0' }}>
            <div style={{
              width: '100px', height: '100px', borderRadius: '50%',
              background: `linear-gradient(135deg, ${T.blueLight}, ${T.blueDark})`,
              display: 'flex', alignItems: 'center', justifyContent: 'center',
              margin: '0 auto 32px', animation: 'spin 2s linear infinite',
            }}>
              <svg width="48" height="48" viewBox="0 0 24 24" fill="none" stroke="#fff" strokeWidth="1.5">
                <path d="M12 2a10 10 0 1 0 10 10"/>
              </svg>
            </div>
            <h2 style={{ fontFamily: "'Cormorant Garamond', serif", fontSize: '36px', fontWeight: 300, marginBottom: '12px' }}>Analyse en cours…</h2>
            <p style={{ color: T.muted, marginBottom: '40px' }}>Notre IA analyse votre morphologie</p>
            <div style={{ background: T.blueLight, borderRadius: '100px', height: '8px', marginBottom: '12px', overflow: 'hidden' }}>
              <div style={{
                height: '100%', borderRadius: '100px',
                background: `linear-gradient(90deg, ${T.red}, ${T.blueDark})`,
                width: `${progress}%`, transition: 'width .2s ease',
              }} />
            </div>
            <div style={{ fontSize: '13px', color: T.red, marginBottom: '40px', fontWeight: 600 }}>{progress}%</div>
            <div style={{ display: 'flex', flexDirection: 'column', gap: '14px', textAlign: 'left' }}>
              {analysisSteps.map((s, i) => (
                <div key={i} style={{
                  display: 'flex', alignItems: 'center', gap: '14px',
                  padding: '14px 18px', borderRadius: '12px',
                  background: s.done ? T.blueLight : T.white,
                  border: `1px solid ${s.done ? 'rgba(53,92,134,0.30)' : T.border}`,
                  transition: 'all .3s ease',
                }}>
                  <div style={{
                    width: '22px', height: '22px', borderRadius: '50%',
                    background: s.done ? `linear-gradient(135deg, ${T.red}, ${T.redDark})` : 'rgba(26,26,26,0.1)',
                    display: 'flex', alignItems: 'center', justifyContent: 'center', flexShrink: 0,
                  }}>
                    {s.done && <svg width="12" height="12" viewBox="0 0 24 24" fill="none" stroke="#fff" strokeWidth="3"><polyline points="20 6 9 17 4 12"/></svg>}
                  </div>
                  <span style={{ fontSize: '14px', fontWeight: s.done ? 500 : 400, color: s.done ? T.ink : T.muted }}>{s.label}</span>
                </div>
              ))}
            </div>
            <style>{`@keyframes spin{from{transform:rotate(0deg)}to{transform:rotate(360deg)}}`}</style>
          </div>
        )}

        {/* STEP 3 */}
        {step === 3 && (
          <div style={{ display: 'grid', gridTemplateColumns: '340px 1fr', gap: '48px', alignItems: 'start' }}>
            {/* Gauche */}
            <div>
              <div style={{ borderRadius: '18px', overflow: 'hidden', position: 'relative', marginBottom: '24px' }}>
                {photoPreview
                  ? <img src={photoPreview} alt="preview" style={{ width: '100%', height: '380px', objectFit: 'cover' }} />
                  : <div style={{ height: '380px', background: T.blueLight, display: 'flex', alignItems: 'center', justifyContent: 'center' }}><span style={{ fontSize: '64px' }}>🧍</span></div>
                }
                <div style={{
                  position: 'absolute', top: '14px', right: '14px',
                  background: 'rgba(249,249,249,0.96)', backdropFilter: 'blur(10px)',
                  borderRadius: '12px', padding: '10px 14px', textAlign: 'center',
                }}>
                  <div style={{ fontSize: '10px', color: T.muted, letterSpacing: '1px', textTransform: 'uppercase' }}>Score IA</div>
                  <div style={{ fontFamily: "'Cormorant Garamond', serif", fontSize: '28px', fontWeight: 600, color: T.red, lineHeight: 1 }}>94%</div>
                </div>
              </div>

              <div style={{ background: T.white, borderRadius: '16px', border: `1px solid ${T.border}`, padding: '24px', boxShadow: '0 12px 34px rgba(26,26,26,0.075)' }}>
                <h3 style={{ fontFamily: "'Cormorant Garamond', serif", fontSize: '20px', fontWeight: 400, marginBottom: '20px' }}>Mensurations détectées</h3>
                {[
                  { label: 'Épaules', val: '42', key: 'shoulders' },
                  { label: 'Poitrine', val: '94', key: 'chest' },
                  { label: 'Taille', val: '76', key: 'waist' },
                  { label: 'Hanches', val: '102', key: 'hips' },
                ].map(m => (
                  <div key={m.key} style={{ display: 'flex', justifyContent: 'space-between', alignItems: 'center', paddingBottom: '12px', marginBottom: '12px', borderBottom: `1px solid ${T.border}` }}>
                    <span style={{ fontSize: '13px', color: T.muted }}>{m.label}</span>
                    <div style={{ display: 'flex', alignItems: 'center', gap: '10px' }}>
                      <button onClick={() => setAdjustments(a => ({ ...a, [m.key]: a[m.key] - 1 }))} style={adjBtnStyle}>−</button>
                      <span style={{ fontSize: '14px', fontWeight: 500, minWidth: '56px', textAlign: 'center' }}>
                        {parseInt(m.val) + adjustments[m.key]} cm
                      </span>
                      <button onClick={() => setAdjustments(a => ({ ...a, [m.key]: a[m.key] + 1 }))} style={adjBtnStyle}>+</button>
                    </div>
                  </div>
                ))}
                <button onClick={() => setAdjustments({ shoulders: 0, chest: 0, waist: 0, hips: 0 })} style={{
                  width: '100%', marginTop: '8px',
                  background: T.blueLight, color: T.blueDark,
                  border: `1px solid rgba(53,92,134,0.30)`,
                  borderRadius: '10px', padding: '12px',
                  fontSize: '13px', fontWeight: 500, cursor: 'pointer',
                }}>Réinitialiser</button>
              </div>

              <button onClick={() => { setStep(1); setPhoto(null); setPhotoPreview(null); setProgress(0); }} style={{
                width: '100%', marginTop: '16px', background: 'transparent', color: T.muted,
                border: `1px solid ${T.border}`, borderRadius: '10px', padding: '12px',
                fontSize: '13px', cursor: 'pointer',
              }}>← Nouvelle photo</button>
            </div>

            {/* Droite */}
            <div>
              <div style={{ display: 'flex', justifyContent: 'space-between', alignItems: 'flex-end', marginBottom: '28px' }}>
                <div>
                  <h2 style={{ fontFamily: "'Cormorant Garamond', serif", fontSize: '32px', fontWeight: 300 }}>Recommandations IA</h2>
                  <p style={{ color: T.muted, fontSize: '13px', marginTop: '6px' }}>
                    Taille recommandée : <strong style={{ color: T.ink }}>M</strong> — 4 produits compatibles
                  </p>
                </div>
                <select value={selectedSize} onChange={e => setSelectedSize(e.target.value)} style={{
                  padding: '10px 16px', borderRadius: '10px', border: `1px solid ${T.border}`,
                  fontSize: '13px', background: T.white, cursor: 'pointer',
                }}>
                  {['XS','S','M','L','XL'].map(s => <option key={s}>{s}</option>)}
                </select>
              </div>

              <div style={{ display: 'grid', gridTemplateColumns: '1fr 1fr', gap: '20px', marginBottom: '32px' }}>
                {scores.map((item, i) => (
                  <div key={i} onClick={() => setSelectedProduct(item.product)} style={{
                    borderRadius: '16px', overflow: 'hidden', background: T.white,
                    border: `2px solid ${selectedProduct.id === item.product.id ? T.red : T.border}`,
                    cursor: 'pointer', transition: 'all .25s ease',
                    boxShadow: selectedProduct.id === item.product.id ? '0 12px 34px rgba(192,57,43,0.15)' : '0 12px 34px rgba(26,26,26,0.075)',
                  }}>
                    <div style={{ position: 'relative', height: '200px' }}>
                      <div style={{ position: 'absolute', inset: 0, backgroundImage: `url(${item.img})`, backgroundSize: 'cover', backgroundPosition: 'center' }} />
                      <div style={{
                        position: 'absolute', top: '10px', right: '10px',
                        background: item.score >= 90 ? T.red : T.blueDark,
                        color: '#fff', fontSize: '12px', fontWeight: 700,
                        padding: '4px 10px', borderRadius: '100px',
                      }}>{item.score}%</div>
                    </div>
                    <div style={{ padding: '14px 16px' }}>
                      <div style={{ fontSize: '11px', color: T.blueDark, letterSpacing: '1px', textTransform: 'uppercase', marginBottom: '3px', fontWeight: 500 }}>{item.product.brand}</div>
                      <div style={{ fontSize: '14px', fontWeight: 500, marginBottom: '8px' }}>{item.product.name}</div>
                      <div style={{ display: 'flex', justifyContent: 'space-between', alignItems: 'center' }}>
                        <span style={{ fontSize: '14px', fontWeight: 600 }}>{item.product.price.toLocaleString()} FCFA</span>
                        <Link to={`/product/${item.product.id}`} onClick={e => e.stopPropagation()} style={{ fontSize: '11px', color: T.red, textDecoration: 'none', fontWeight: 600 }}>Voir →</Link>
                      </div>
                    </div>
                  </div>
                ))}
              </div>

              {selectedProduct && (
                <div style={{
                  background: 'linear-gradient(180deg, #1A1A1A 0%, #26384D 100%)',
                  borderRadius: '18px', padding: '28px 32px',
                  display: 'flex', justifyContent: 'space-between', alignItems: 'center',
                }}>
                  <div>
                    <div style={{ color: 'rgba(249,249,249,0.6)', fontSize: '12px', marginBottom: '6px' }}>Produit sélectionné</div>
                    <div style={{ color: T.cream, fontWeight: 500, fontSize: '16px', marginBottom: '4px' }}>{selectedProduct.name}</div>
                    <div style={{ color: T.blueLight, fontSize: '13px' }}>Taille {selectedSize} · {selectedProduct.price.toLocaleString()} FCFA</div>
                  </div>
                  <div style={{ display: 'flex', gap: '12px' }}>
                    <Link to={`/product/${selectedProduct.id}`} style={{
                      background: 'rgba(249,249,249,0.12)', color: T.cream,
                      border: '1px solid rgba(249,249,249,0.22)', borderRadius: '10px',
                      padding: '12px 20px', fontSize: '13px', textDecoration: 'none', fontWeight: 500,
                    }}>Voir la fiche</Link>
                    <button style={{
                      background: `linear-gradient(135deg, ${T.red}, ${T.redDark})`,
                      color: '#fff', border: 'none', borderRadius: '10px',
                      padding: '12px 20px', fontSize: '13px', fontWeight: 500, cursor: 'pointer',
                      boxShadow: '0 8px 20px rgba(192,57,43,0.25)',
                    }}>Ajouter au panier</button>
                  </div>
                </div>
              )}
            </div>
          </div>
        )}
      </div>
    </div>
  );
}

const adjBtnStyle = {
  width: '28px', height: '28px', borderRadius: '8px',
  background: '#E6EEF6', border: '1px solid rgba(53,92,134,0.20)',
  cursor: 'pointer', fontSize: '16px', fontWeight: 500,
  display: 'flex', alignItems: 'center', justifyContent: 'center', color: '#355C86',
};