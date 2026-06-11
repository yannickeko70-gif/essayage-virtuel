import { Link, useLocation } from 'react-router-dom';
import { useCart } from '../../context/CartContext';

export default function Navbar() {
  const { cartItems = [] } = useCart();
  const location = useLocation();
  const totalQty = cartItems.reduce((s, i) => s + i.qty, 0);

  const links = [
    { to: '/', label: 'Accueil' },
    { to: '/catalogue', label: 'Catalogue' },
    { to: '/cabine', label: 'Essayage' },
  ];

  return (
    <nav style={{
      position: 'fixed', top: 0, left: 0, right: 0, zIndex: 100,
      height: 64, display: 'flex', alignItems: 'center', padding: '0 48px',
      background: 'rgba(249,249,249,.97)',
      borderBottom: '1px solid rgba(26,26,26,.08)',
      boxShadow: '0 10px 32px rgba(26,26,26,.055)',
      backdropFilter: 'blur(16px)',
    }}>
      {/* Logo */}
      <Link to="/" style={{
        fontFamily: "'Cormorant Garamond', serif",
        fontSize: 28, fontWeight: 600, letterSpacing: 4,
        color: 'var(--ink)', textDecoration: 'none', marginRight: 'auto',
      }}>
        TryOn<span style={{ color: '#C0392B' }}>.</span>
      </Link>

      {/* Liens */}
      <div style={{ display: 'flex', gap: 32, alignItems: 'center' }}>
        {links.map(({ to, label }) => {
          const active = location.pathname === to;
          return (
            <Link key={to} to={to} style={{
              fontSize: 13, fontWeight: 500, letterSpacing: '1.5px',
              textTransform: 'uppercase',
              color: active ? 'var(--ink)' : 'var(--muted)',
              textDecoration: 'none',
              borderBottom: active ? '2px solid #C0392B' : '2px solid transparent',
              paddingBottom: 4,
              transition: 'color .2s, border-color .2s',
            }}>{label}</Link>
          );
        })}
      </div>

      {/* Icônes */}
      <div style={{ display: 'flex', gap: 12, marginLeft: 40, alignItems: 'center' }}>
        <Link to="/auth" style={{
          width: 44, height: 44, borderRadius: '50%',
          background: '#fff', border: '1px solid rgba(26,26,26,.10)',
          display: 'flex', alignItems: 'center', justifyContent: 'center',
          fontSize: 18, textDecoration: 'none', color: 'var(--ink)',
          boxShadow: '0 8px 22px rgba(26,20,16,.07)',
          transition: 'transform .25s, color .25s',
        }}>👤</Link>

        <Link to="/panier" style={{
          width: 44, height: 44, borderRadius: '50%',
          background: '#fff', border: '1px solid rgba(26,26,26,.10)',
          display: 'flex', alignItems: 'center', justifyContent: 'center',
          fontSize: 18, textDecoration: 'none', color: 'var(--ink)',
          position: 'relative', boxShadow: '0 8px 22px rgba(26,20,16,.07)',
        }}>
          🛒
          {totalQty > 0 && (
            <span style={{
              position: 'absolute', top: -6, right: -6,
              background: '#C0392B', color: '#fff',
              fontSize: 9, fontWeight: 700,
              width: 16, height: 16, borderRadius: '50%',
              display: 'flex', alignItems: 'center', justifyContent: 'center',
            }}>{totalQty}</span>
          )}
        </Link>
      </div>
    </nav>
  );
}