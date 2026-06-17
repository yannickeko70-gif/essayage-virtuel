import React from 'react';
import { Link } from 'react-router-dom';
import { products, productImages } from '../services/productService';

/* ── Design tokens inspired by ASOS.fr ── */
const T = {
  ink: '#1A1A1A',
  cream: '#F8F9FA',
  warm: '#F0F2F5',
  white: '#FFFFFF',
  black: '#000000',
  red: '#C0392B',
  redDark: '#8E241D',
  blue: '#5B7FA6',
  blueDark: '#355C86',
  blueNavy: '#26384D',
  blueLight: '#E6EEF6',
  gray: '#6A6F78',
  grayLight: '#E0E0E0',
  border: 'rgba(0,0,0,0.08)',
  borderLight: 'rgba(0,0,0,0.03)',
};

/* ── Refined style constants for ASOS-like professionalism ── */
const HERO_CONTENT_STYLE = {
  display: 'flex',
  flexDirection: 'column',
  justifyContent: 'center',
  padding: '96px 80px 96px 80px',
  background: T.cream,
  minHeight: 'calc(100vh - 72px)',
};

const HERO_TAG_STYLE = {
  display: 'inline-flex',
  alignItems: 'center',
  gap: '6px',
  background: 'rgba(91,127,166,0.08)',
  color: T.blueNavy,
  border: '1px solid rgba(91,127,166,0.12)',
  fontSize: '10px',
  fontWeight: 500,
  letterSpacing: '1.5px',
  textTransform: 'uppercase',
  padding: '4px 10px',
  borderRadius: '50px',
  width: 'fit-content',
  marginBottom: '24px',
};

const HERO_TITLE_STYLE = {
  fontFamily: "'Cormorant Garamond', serif",
  fontSize: 'clamp(42px,6vw,64px)',
  fontWeight: 300,
  lineHeight: 1.1,
  marginBottom: '20px',
  color: T.ink,
};

const HERO_DESCRIPTION_STYLE = {
  fontSize: '15px',
  color: T.gray,
  maxWidth: '450px',
  lineHeight: 1.7,
  marginBottom: '32px',
};

const HERO_BUTTONS_STYLE = {
  display: 'flex',
  gap: '12px',
  flexWrap: 'wrap',
};

const HERO_BUTTON_PRIMARY = {
  display: 'inline-flex',
  alignItems: 'center',
  justifyContent: 'center',
  gap: '8px',
  background: T.red,
  color: T.white,
  fontSize: '13px',
  fontWeight: 600,
  letterSpacing: '1px',
  textTransform: 'uppercase',
  padding: '14px 28px',
  borderRadius: '4px',
  textDecoration: 'none',
  transition: 'all 0.2s ease',
  boxShadow: '0 2px 4px rgba(0,0,0,0.1)',
};

const HERO_BUTTON_OUTLINE = {
  display: 'inline-flex',
  alignItems: 'center',
  justifyContent: 'center',
  gap: '8px',
  background: 'transparent',
  color: T.ink,
  fontSize: '13px',
  fontWeight: 600,
  letterSpacing: '1px',
  textTransform: 'uppercase',
  padding: '14px 28px',
  border: `1px solid ${T.border}`,
  borderRadius: '4px',
  textDecoration: 'none',
  transition: 'all 0.2s ease',
};

const HERO_STATS_STYLE = {
  display: 'flex',
  gap: '32px',
  marginTop: '48px',
  paddingTop: '32px',
  borderTop: `1px solid ${T.borderLight}`,
};

const STAT_ITEM_STYLE = {
  display: 'flex',
  flexDirection: 'column',
  alignItems: 'center',
  textAlign: 'center',
};

const STAT_NUMBER_STYLE = {
  fontFamily: "'Cormorant Garamond', serif",
  fontSize: '32px',
  fontWeight: 600,
  color: T.red,
  lineHeight: 1,
};

const STAT_LABEL_STYLE = {
  fontSize: '12px',
  color: T.gray,
  letterSpacing: '0.5px',
  marginTop: '4px',
  textTransform: 'uppercase',
};

const CATEGORIES_SECTION_STYLE = {
  padding: '80px',
  background: T.cream,
};

const CATEGORIES_HEADER_STYLE = {
  textAlign: 'center',
  marginBottom: '48px',
};

const CATEGORIES_SUBHEADER_STYLE = {
  fontSize: '10px',
  fontWeight: 500,
  letterSpacing: '2px',
  textTransform: 'uppercase',
  color: T.blueDark,
  marginBottom: '8px',
};

const CATEGORIES_TITLE_STYLE = {
  fontFamily: "'Cormorant Garamond', serif",
  fontSize: 'clamp(28px,4vw,40px)',
  fontWeight: 300,
  color: T.ink,
};

const CATEGORIES_GRID_STYLE = {
  display: 'grid',
  gridTemplateColumns: 'repeat(auto-fit, minmax(200px, 1fr))',
  gap: '24px',
};

const FEATURED_SECTION_STYLE = {
  padding: '80px',
  background: T.warm,
};

const FEATURED_HEADER_STYLE = {
  display: 'flex',
  justifyContent: 'space-between',
  alignItems: 'center',
  marginBottom: '40px',
};

const FEATURED_TITLE_LEFT_STYLE = {
  display: 'flex',
  flexDirection: 'column',
};

const FEATURED_SUBTITLE_STYLE = {
  fontSize: '10px',
  fontWeight: 500,
  letterSpacing: '2px',
  textTransform: 'uppercase',
  color: T.blueDark,
  marginBottom: '4px',
};

const FEATURED_TITLE_STYLE = {
  fontFamily: "'Cormorant Garamond', serif",
  fontSize: 'clamp(24px,3.5vw,32px)',
  fontWeight: 300,
  color: T.ink,
};

const FEATURED_LINK_STYLE = {
  fontSize: '12px',
  color: T.blueDark,
  textDecoration: 'none',
  fontWeight: 500,
  letterSpacing: '0.5px',
};

const FEATURED_GRID_STYLE = {
  display: 'grid',
  gridTemplateColumns: 'repeat(auto-fit, minmax(220px, 1fr))',
  gap: '20px',
};

const IA_BANNER_SECTION_STYLE = {
  margin: '0 80px 80px',
  background: 'linear-gradient(180deg, #1A1A1A 0%, #26384D 100%)',
  borderRadius: '12px',
  padding: '64px',
  display: 'grid',
  gridTemplateColumns: '1fr 1fr',
  gap: '40px',
  alignItems: 'center',
};

const IA_BANNER_CONTENT_STYLE = {
  display: 'flex',
  flexDirection: 'column',
};

const IA_BADGE_STYLE = {
  display: 'inline-flex',
  alignItems: 'center',
  gap: '6px',
  background: 'rgba(192,57,43,0.15)',
  color: '#f8bbd0',
  fontSize: '10px',
  letterSpacing: '1px',
  textTransform: 'uppercase',
  padding: '4px 8px',
  borderRadius: '50px',
  marginBottom: '20px',
};

const IA_TITLE_STYLE = {
  fontFamily: "'Cormorant Garamond', serif",
  fontSize: 'clamp(28px,4vw,40px)',
  fontWeight: 300,
  color: T.cream,
  lineHeight: 1.2,
  marginBottom: '16px',
};

const IA_DESCRIPTION_STYLE = {
  color: 'rgba(249,249,249,0.7)',
  lineHeight: 1.6,
  marginBottom: '24px',
  maxWidth: '400px',
  fontSize: '14px',
};

const IA_BUTTON_STYLE = {
  display: 'inline-flex',
  alignItems: 'center',
  gap: '8px',
  background: 'linear-gradient(135deg, #C0392B, #8E241D)',
  color: '#fff',
  fontSize: '13px',
  fontWeight: 500,
  letterSpacing: '1px',
  textTransform: 'uppercase',
  padding: '14px 28px',
  borderRadius: '6px',
  textDecoration: 'none',
  boxShadow: '0 4px 12px rgba(192,57,43,0.15)',
  transition: 'all 0.2s ease',
};

const IA_STEPS_STYLE = {
  display: 'flex',
  flexDirection: 'column',
  gap: '16px',
};

const IA_STEP_ITEM_STYLE = {
  display: 'flex',
  gap: '16px',
  alignItems: 'flex-start',
};

const IA_STEP_NUMBER_STYLE = {
  fontFamily: "'Cormorant Garamond', serif",
  fontSize: '24px',
  fontWeight: 600,
  color: T.red,
  lineHeight: 1,
  minWidth: '32px',
};

const IA_STEP_CONTENT_STYLE = {
  display: 'flex',
  flexDirection: 'column',
};

const IA_STEP_TITLE_STYLE = {
  color: T.cream,
  fontWeight: 500,
  marginBottom: '2px',
  fontSize: '13px',
};

const IA_STEP_DESCRIPTION_STYLE = {
  color: 'rgba(249,249,249,0.6)',
  fontSize: '12px',
  lineHeight: 1.5,
};

/* ── Product Card Styles (ASOS-inspired) ── */
const PRODUCT_CARD_STYLE = {
  borderRadius: '8px',
  overflow: 'hidden',
  background: T.white,
  border: `1px solid ${T.borderLight}`,
  transition: 'all 0.2s ease',
  position: 'relative',
};

const PRODUCT_CARD_HOVER_STYLE = {
  transform: 'translateY(-4px)',
  boxShadow: '0 8px 24px rgba(0,0,0,0.08)',
  borderColor: T.border,
};

const PRODUCT_IMAGE_STYLE = {
  position: 'relative',
  height: '260px',
  overflow: 'hidden',
  backgroundColor: T.cream,
};

const PRODUCT_TAG_STYLE = {
  position: 'absolute',
  top: '12px',
  left: '12px',
  background: T.red,
  color: T.white,
  fontSize: '10px',
  fontWeight: 600,
  letterSpacing: '0.5px',
  textTransform: 'uppercase',
  padding: '4px 8px',
  borderRadius: '12px',
};

const PRODUCT_INFO_STYLE = {
  padding: '16px',
};

const PRODUCT_BRAND_STYLE = {
  fontSize: '11px',
  fontWeight: 500,
  letterSpacing: '0.5px',
  textTransform: 'uppercase',
  color: T.blueDark,
  marginBottom: '4px',
  display: 'block',
};

const PRODUCT_NAME_STYLE = {
  fontSize: '14px',
  fontWeight: 500,
  color: T.ink,
  marginBottom: '8px',
  lineHeight: 1.4,
  display: '-webkit-box',
  WebkitLineClamp: '2',
  WebkitBoxOrient: 'vertical',
  overflow: 'hidden',
};

const PRODUCT_PRICE_STYLE = {
  display: 'flex',
  alignItems: 'baseline',
  gap: '6px',
  marginBottom: '12px',
};

const PRODUCT_PRICE_CURRENT = {
  fontSize: '16px',
  fontWeight: 600,
  color: T.ink,
};

const PRODUCT_PRICE_OLD = {
  fontSize: '13px',
  color: T.gray,
  textDecoration: 'line-through',
};

const PRODUCT_COLORS_STYLE = {
  display: 'flex',
  gap: '6px',
  marginBottom: '12px',
};

const PRODUCT_COLOR_SWATCH = {
  width: '18px',
  height: '18px',
  borderRadius: '50%',
  border: `1px solid ${T.borderLight}`,
  cursor: 'pointer',
  transition: 'all 0.2s ease',
};

const PRODUCT_COLOR_SWATCH_ACTIVE = {
  borderWidth: '2px',
  borderColor: T.blueDark,
};

const PRODUCT_BUTTON_STYLE = {
  display: 'block',
  width: '100%',
  padding: '12px',
  background: T.red,
  color: T.white,
  fontSize: '13px',
  fontWeight: 600,
  letterSpacing: '0.5px',
  textTransform: 'uppercase',
  border: 'none',
  borderRadius: '4px',
  cursor: 'pointer',
  transition: 'all 0.2s ease',
  textAlign: 'center',
};

const PRODUCT_BUTTON_OUTLINE_STYLE = {
  display: 'block',
  width: '100%',
  padding: '12px',
  background: 'transparent',
  color: T.ink,
  fontSize: '13px',
  fontWeight: 600,
  letterSpacing: '0.5px',
  textTransform: 'uppercase',
  border: `1px solid ${T.border}`,
  borderRadius: '4px',
  cursor: 'pointer',
  transition: 'all 0.2s ease',
  textAlign: 'center',
};

export default function Home() {
  const featured = React.useMemo(() => products.slice(0, 4), [products]);

  return (
    <div style={{ paddingTop: '72px' }}>

      {/* ── HERO ── */}
      <section
        style={{
          minHeight: 'calc(100vh - 72px)',
          display: 'grid',
          gridTemplateColumns: '1fr 1fr',
          overflow: 'hidden',
        }}
        aria-label="Hero section"
      >
        <div style={HERO_CONTENT_STYLE}>
          {/* Tag */}
          <span style={HERO_TAG_STYLE}>
            <span style={{ color: T.red }}>✦</span> Essayage virtuel par IA
          </span>

          <h1 style={HERO_TITLE_STYLE}>
            La mode africaine<br />
            <em style={{ fontStyle: 'italic', color: T.red }}>réinventée</em><br />
            pour vous
          </h1>

          <p style={HERO_DESCRIPTION_STYLE}>
            Essayez virtuellement des tenues wax, bogolan et ankara grâce à notre cabine IA. Commandez avec confiance.
          </p>

          <div style={HERO_BUTTONS_STYLE}>
            <Link
              to="/tryon"
              className="btn-primary"
              aria-label="Essayer l'essayage virtuel"
            >
              Essayer maintenant
              <svg
                width="16"
                height="16"
                viewBox="0 0 24 24"
                fill="none"
                stroke="currentColor"
                strokeWidth="2"
                aria-hidden="true"
                focusable="false"
              ><path d="M5 12h14M12 5l7 7-7 7"/></svg>
            </Link>
            <Link
              to="/shop"
              className="btn-outline"
              aria-label="Voir le catalogue produits"
            >
              Voir le catalogue
            </Link>
          </div>

          {/* Stats */}
          <div style={HERO_STATS_STYLE} aria-label="Statistics section">
            {[
              { val: '2 400+', label: 'Tenues disponibles' },
              { val: '98%', label: 'Satisfaction client' },
              { val: '12k+', label: 'Essayages réalisés' },
            ].map(s => (
              <div key={s.label} style={STAT_ITEM_STYLE}>
                <div style={STAT_NUMBER_STYLE}>
                  <span>{s.val}</span>
                </div>
                <div style={STAT_LABEL_STYLE}>{s.label}</div>
              </div>
            ))}
          </div>
        </div>

        {/* Image hero droite */}
        <div style={{ position: 'relative', overflow: 'hidden' }} aria-hidden="true">
          <div
            style={{
              position: 'absolute',
              inset: 0,
              backgroundImage: `url(${productImages[0]})`,
              backgroundSize: 'cover',
              backgroundPosition: 'center',
            }}
            aria-hidden="true"
          />
          <div
            style={{
              position: 'absolute',
              inset: 0,
              background: 'linear-gradient(135deg, rgba(26,26,26,0.12) 0%, transparent 60%)',
            }}
            aria-hidden="true"
          />
          {/* Badge IA flottant */}
          <div
            style={{
              position: 'absolute',
              bottom: '40px',
              left: '40px',
              background: 'rgba(250,247,242,0.96)',
              borderRadius: '18px',
              padding: '16px 20px',
              display: 'flex',
              alignItems: 'center',
              gap: '12px',
              boxShadow: '0 18px 50px rgba(26,26,26,0.13)',
            }}
            role="img"
            aria-label="Badge indiquant un score IA de 94% pour la compatibilité morphologique"
          >
            <div
              style={{
                width: '40px',
                height: '40px',
                background: T.blueLight,
                borderRadius: '50%',
                display: 'flex',
                alignItems: 'center',
                justifyContent: 'center',
                fontSize: '18px',
              }}
              aria-hidden="true"
            >✨</div>
            <div>
              <div
                style={{
                  fontSize: '11px',
                  color: T.muted,
                  letterSpacing: '1.5px',
                  textTransform: 'uppercase'
                }}
              >Score IA</div>
              <div
                style={{
                  fontFamily: "'Cormorant Garamond', serif",
                  fontSize: '28px',
                  fontWeight: 600,
                  color: T.red,
                  lineHeight: 1,
                }}
              >94%</div>
              <div
                style={{
                  fontSize: '11px',
                  color: T.muted,
                  marginTop: '2px'
                }}
              >Compatibilité morphologique</div>
            </div>
          </div>
        </div>
      </section>

      {/* ── CATÉGORIES ── */}
      <section style={CATEGORIES_SECTION_STYLE} aria-label="Product categories section">
        <div style={CATEGORIES_HEADER_STYLE}>
          <div style={CATEGORIES_SUBHEADER_STYLE}>
            Collections
          </div>
          <h2 style={CATEGORIES_TITLE_STYLE}>
            Explorez nos <em style={{ fontStyle: 'italic', color: T.red }}>catégories</em>
          </h2>
        </div>
        <div style={CATEGORIES_GRID_STYLE}>
          {[
            { label: 'Femme', sub: '840 articles', img: productImages[0] },
            { label: 'Homme', sub: '620 articles', img: productImages[3] },
            { label: 'Enfant', sub: '310 articles', img: productImages[6] },
            { label: 'Accessoires', sub: '180 articles', img: productImages[7] },
          ].map((cat, i) => (
            <Link
              to="/shop"
              key={i}
              style={{ textDecoration: 'none' }}
              aria-label={`Découvrir la catégorie ${cat.label.toLowerCase()}`}
            >
              <div
                style={{
                  position: 'relative',
                  borderRadius: '18px',
                  overflow: 'hidden',
                  height: '320px',
                  cursor: 'pointer',
                  transition: 'transform .3s ease, box-shadow .3s ease'
                }}
                onMouseEnter={e => {
                  e.currentTarget.style.transform = 'translateY(-6px)';
                  e.currentTarget.style.boxShadow = '0 20px 50px rgba(26,26,26,0.15)';
                }}
                onMouseLeave={e => {
                  e.currentTarget.style.transform = 'none';
                  e.currentTarget.style.boxShadow = 'none';
                }}
              >
                <div
                  style={{
                    position: 'absolute',
                    inset: 0,
                    backgroundImage: `url(${cat.img})`,
                    backgroundSize: 'cover',
                    backgroundPosition: 'center'
                  }}
                  aria-hidden="true"
                />
                <div
                  style={{
                    position: 'absolute',
                    inset: 0,
                    background: 'linear-gradient(to top, rgba(26,26,26,0.75) 0%, transparent 55%)'
                  }}
                  aria-hidden="true"
                />
                <div
                  style={{
                    position: 'absolute',
                    bottom: '24px',
                    left: '24px'
                  }}
                >
                  <div
                    style={{
                      color: '#fff',
                      fontSize: '20px',
                      fontFamily: "'Cormorant Garamond', serif",
                      fontWeight: 600
                    }}
                  >{cat.label}</div>
                  <div
                    style={{
                      color: 'rgba(255,255,255,0.7)',
                      fontSize: '12px',
                      marginTop: '4px'
                    }}
                  >{cat.sub}</div>
                </div>
              </div>
            </Link>
          ))}
        </div>
      </section>

      {/* ── PRODUITS VEDETTES ── */}
      <section style={FEATURED_SECTION_STYLE} aria-label="Featured products section">
        <div style={FEATURED_HEADER_STYLE}>
          <div style={FEATURED_TITLE_LEFT_STYLE}>
            <div style={FEATURED_SUBTITLE_STYLE}>Sélection</div>
            <h2 style={FEATURED_TITLE_STYLE}>
              Produits <em style={{ fontStyle: 'italic', color: T.red }}>vedettes</em>
            </h2>
          </div>
          <Link
            to="/shop"
            style={FEATURED_LINK_STYLE}
            aria-label="Voir tous les produits vedettes"
          >
            Voir tout →
          </Link>
        </div>
        <div style={FEATURED_GRID_STYLE}>
          {featured.map((p, i) => <ProductCard key={p.id} product={p} img={productImages[i]} />)}
        </div>
      </section>

      {/* ── BANNIÈRE IA ── */}
      <section style={IA_BANNER_SECTION_STYLE} aria-label="IA banner section">
        <div style={IA_BANNER_CONTENT_STYLE}>
          <span style={IA_BADGE_STYLE}>✦ Technologie IA</span>
          <h2 style={IA_TITLE_STYLE}>
            Votre cabine d'essayage<br />
            <em style={{ fontStyle: 'italic', color: '#f5b7b1' }}>virtuelle</em>
          </h2>
          <p style={IA_DESCRIPTION_STYLE}>
            Uploadez votre photo, notre IA analyse votre morphologie et vous propose les tailles et coupes les plus adaptées.
          </p>
          <Link
            to="/tryon"
            style={IA_BUTTON_STYLE}
            aria-label="Commencer l'essayage virtuel gratuitement"
          >
            Essayer gratuitement →
          </Link>
        </div>
        <div style={IA_STEPS_STYLE}>
          {[
            { n: '01', t: 'Uploadez votre photo', d: 'Une photo de face en tenue ajustée suffit.' },
            { n: '02', t: 'Analyse morphologique', d: 'Notre IA détecte vos mesures en quelques secondes.' },
            { n: '03', t: 'Score de compatibilité', d: "Chaque vêtement reçoit un score d'adéquation." },
            { n: '04', t: 'Commandez en confiance', d: 'Ajustements de taille inclus automatiquement.' },
          ].map(s => (
            <div key={s.n} style={IA_STEP_ITEM_STYLE}>
              <span
                style={IA_STEP_NUMBER_STYLE}
              >{s.n}</span>
              <div style={IA_STEP_CONTENT_STYLE}>
                <div style={IA_STEP_TITLE_STYLE}>{s.t}</div>
                <div style={IA_STEP_DESCRIPTION_STYLE}>{s.d}</div>
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
  const T = {
    red: '#C0392B',
    blueDark: '#355C86',
    blue: '#5B7FA6',
    blueLight: '#E6EEF6',
    blueNavy: '#26384D',
    ink: '#1A1A1A',
    muted: '#6A6F78',
    border: 'rgba(26,26,26,0.105)'
  };

  return (
    <Link
      to={`/product/${product.id}`}
      style={{ textDecoration: 'none', color: 'inherit' }}
      aria-label={`Voir les détails du produit ${product.name}`}
    >
      <div
        onMouseEnter={() => setHovered(true)}
        onMouseLeave={() => setHovered(false)}
        style={{
          borderRadius: '14px',
          overflow: 'hidden',
          background: '#fff',
          border: `1px solid ${hovered ? 'rgba(91,127,166,0.32)' : T.border}`,
          boxShadow: hovered ? '0 22px 52px rgba(26,26,26,0.13)' : '0 12px 34px rgba(26,26,26,0.075)',
          transition: 'all .3s ease',
          transform: hovered ? 'translateY(-4px)' : 'none',
        }}
        role="group"
        aria-labelledby={`product-title-${product.id}`}
      >
        <div
          style={{
            position: 'relative',
            height: '280px',
            overflow: 'hidden'
          }}
        >
          <div
            style={{
              position: 'absolute',
              inset: 0,
              backgroundImage: `url(${img})`,
              backgroundSize: 'cover',
              backgroundPosition: 'center',
              background: hovered ? 'linear-gradient(145deg,#F8F9FB,#E9EFF6)' : undefined,
              transition: 'transform .4s ease',
              transform: hovered ? 'scale(1.05)' : 'scale(1)',
            }}
            aria-hidden="true"
          />
          {product.tag && (
            <span
              style={{
                position: 'absolute',
                top: '14px',
                left: '14px',
                background: product.tag === 'Nouveau' ? 'rgba(91,127,166,0.14)' : T.red,
                color: product.tag === 'Nouveau' ? T.blueDark : '#fff',
                fontSize: '10px',
                fontWeight: 600,
                letterSpacing: '1px',
                padding: '4px 10px',
                borderRadius: '100px',
              }}
              aria-hidden="true"
            >{product.tag}</span>
          )}
          {hovered && (
            <Link
              to="/tryon"
              onClick={e => e.stopPropagation()}
              style={{
                position: 'absolute',
                bottom: '14px',
                left: '50%',
                transform: 'translateX(-50%)',
                background: T.blueLight,
                color: T.blueNavy,
                fontSize: '11px',
                fontWeight: 600,
                letterSpacing: '1px',
                textTransform: 'uppercase',
                padding: '10px 20px',
                borderRadius: '100px',
                textDecoration: 'none',
                whiteSpace: 'nowrap',
                boxShadow: '0 4px 16px rgba(26,26,26,0.12)',
              }}
              aria-label="Essayer ce produit virtuellement"
            >Essayer virtuellement</Link>
          )}
        </div>
        <div style={{ padding: '16px 18px 20px' }}>
          <div
            id={`product-brand-${product.id}`}
            style={{
              fontSize: '11px',
              color: T.blueDark,
              letterSpacing: '1.5px',
              textTransform: 'uppercase',
              marginBottom: '4px',
              fontWeight: 500
            }}
          >
            {product.brand}
          </div>
          <div
            id={`product-title-${product.id}`}
            style={{
              fontSize: '15px',
              fontWeight: 500,
              color: T.ink,
              marginBottom: '12px'
            }}
          >
            {product.name}
          </div>
          <div
            style={{
              display: 'flex',
              justifyContent: 'space-between',
              alignItems: 'center'
            }}
          >
            <div>
              {product.old && (
                <span
                  style={{
                    fontSize: '12px',
                    color: T.muted,
                    textDecoration: 'line-through',
                    marginRight: '8px'
                  }}
                >{product.old.toLocaleString()} FCFA</span>
              )}
              <span
                style={{
                  fontSize: '15px',
                  fontWeight: 600,
                  color: T.ink
                }}
              >{product.price.toLocaleString()} <small style={{ fontSize: '11px', fontWeight: 400 }}>FCFA</small></span>
            </div>
            <div
              style={{
                display: 'flex',
                gap: '6px'
              }}
            >
              {product.colors.slice(0, 3).map((c, i) => (
                <div
                  key={i}
                  style={{
                    width: '12px',
                    height: '12px',
                    borderRadius: '50%',
                    background: c,
                    outline: i === 0 ? `2px solid ${T.blueDark}` : 'none',
                    outlineOffset: '2px',
                    border: '1.5px solid rgba(26,26,26,0.15)',
                  }}
                  aria-hidden="true"
                />
              ))}
            </div>
          </div>
        </div>
      </div>
    </Link>
  );
}