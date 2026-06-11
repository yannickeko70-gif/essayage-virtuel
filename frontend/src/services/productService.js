import { useState } from "react";
import { Link, NavLink, useNavigate } from "react-router-dom";
//import { useCart } from "../../context/CartContext";
import { useCart } from "../context/CartContext";
export default function Navbar() {
  const { totalItems } = useCart();
  const [menuOpen, setMenuOpen] = useState(false);
  const [searchOpen, setSearchOpen] = useState(false);
  const [searchQuery, setSearchQuery] = useState("");
  const navigate = useNavigate();

  const handleSearch = (e) => {
    e.preventDefault();
    if (searchQuery.trim()) {
      navigate(`/catalogue?search=${encodeURIComponent(searchQuery.trim())}`);
      setSearchOpen(false);
      setSearchQuery("");
    }
  };

  const navLinks = [
    { to: "/", label: "Accueil" },
    { to: "/catalogue", label: "Catalogue" },
    { to: "/essayage", label: "✨ Essayer" },
  ];

  return (
    <nav
      className="fixed top-0 left-0 right-0 z-50 h-16"
      style={{
        background: "rgba(255,255,255,0.97)",
        borderBottom: "1px solid rgba(0,0,0,0.10)",
        backdropFilter: "blur(16px)",
      }}
    >
      <div className="max-w-7xl mx-auto h-full px-8 flex items-center gap-8">
        {/* Logo */}
        <Link
          to="/"
          className="mr-auto flex items-center gap-1 no-underline"
          style={{ fontFamily: "'DM Sans', sans-serif", fontSize: 26, fontWeight: 900, letterSpacing: 4, textDecoration: "none" }}
        >
          <span style={{ color: "#050505" }}>CF</span>
          <span style={{ color: "#E30613" }}>PD</span>
        </Link>

        {/* Liens desktop */}
        <div className="hidden md:flex items-center gap-8">
          {navLinks.map((l) => (
            <NavLink
              key={l.to}
              to={l.to}
              end={l.to === "/"}
              style={({ isActive }) => ({
                fontSize: 13,
                fontWeight: 500,
                letterSpacing: "1.5px",
                textTransform: "uppercase",
                color: isActive ? "#E30613" : "#5F5F5F",
                textDecoration: "none",
                transition: "color .2s",
              })}
            >
              {l.label}
            </NavLink>
          ))}
        </div>

        {/* Icônes */}
        <div className="flex items-center gap-1">
          {/* Recherche */}
          <button
            onClick={() => setSearchOpen((o) => !o)}
            style={{ width: 42, height: 42, border: "none", background: "none", cursor: "pointer", borderRadius: 14, display: "flex", alignItems: "center", justifyContent: "center", color: "#050505", transition: "all .2s" }}
            aria-label="Rechercher"
          >
            <svg width="18" height="18" fill="none" stroke="currentColor" strokeWidth="2" viewBox="0 0 24 24">
              <circle cx="11" cy="11" r="8" /><path d="m21 21-4.35-4.35" />
            </svg>
          </button>

          {/* Panier */}
          <Link
            to="/panier"
            style={{ width: 42, height: 42, border: "none", background: "none", cursor: "pointer", borderRadius: 14, display: "flex", alignItems: "center", justifyContent: "center", color: "#050505", transition: "all .2s", position: "relative", textDecoration: "none" }}
            aria-label="Panier"
          >
            <svg width="18" height="18" fill="none" stroke="currentColor" strokeWidth="2" viewBox="0 0 24 24">
              <path d="M6 2 3 6v14a2 2 0 0 0 2 2h14a2 2 0 0 0 2-2V6l-3-4z" />
              <line x1="3" y1="6" x2="21" y2="6" />
              <path d="M16 10a4 4 0 0 1-8 0" />
            </svg>
            {totalItems > 0 && (
              <span style={{
                position: "absolute", top: -6, right: -6,
                background: "#E30613", color: "#fff",
                fontSize: 9, fontWeight: 700,
                width: 16, height: 16, borderRadius: "50%",
                display: "flex", alignItems: "center", justifyContent: "center"
              }}>
                {totalItems > 9 ? "9+" : totalItems}
              </span>
            )}
          </Link>

          {/* Compte */}
          <Link
            to="/connexion"
            style={{ width: 42, height: 42, border: "none", background: "none", cursor: "pointer", borderRadius: 14, display: "flex", alignItems: "center", justifyContent: "center", color: "#050505", transition: "all .2s", textDecoration: "none" }}
            aria-label="Mon compte"
          >
            <svg width="18" height="18" fill="none" stroke="currentColor" strokeWidth="2" viewBox="0 0 24 24">
              <path d="M20 21v-2a4 4 0 0 0-4-4H8a4 4 0 0 0-4 4v2" />
              <circle cx="12" cy="7" r="4" />
            </svg>
          </Link>

          {/* Burger mobile */}
          <button
            onClick={() => setMenuOpen((o) => !o)}
            style={{ width: 42, height: 42, border: "none", background: "none", cursor: "pointer", borderRadius: 14, display: "flex", alignItems: "center", justifyContent: "center", color: "#050505" }}
            className="md:hidden"
            aria-label="Menu"
          >
            <svg width="18" height="18" fill="none" stroke="currentColor" strokeWidth="2" viewBox="0 0 24 24">
              {menuOpen ? <path d="M18 6 6 18M6 6l12 12" /> : <><line x1="3" y1="6" x2="21" y2="6" /><line x1="3" y1="12" x2="21" y2="12" /><line x1="3" y1="18" x2="21" y2="18" /></>}
            </svg>
          </button>
        </div>
      </div>

      {/* Barre de recherche */}
      {searchOpen && (
        <div style={{ background: "#fff", borderBottom: "1px solid rgba(0,0,0,0.10)", padding: "12px 32px" }}>
          <form onSubmit={handleSearch} style={{ maxWidth: 640, margin: "0 auto", display: "flex", gap: 12 }}>
            <input
              autoFocus
              type="text"
              value={searchQuery}
              onChange={(e) => setSearchQuery(e.target.value)}
              placeholder="Rechercher un vêtement..."
              style={{ flex: 1, border: "1.5px solid rgba(0,0,0,0.14)", borderRadius: 10, padding: "8px 16px", fontSize: 14, outline: "none", fontFamily: "'DM Sans', sans-serif" }}
            />
            <button
              type="submit"
              style={{ background: "#050505", color: "#fff", border: "none", padding: "8px 20px", borderRadius: 10, fontSize: 13, fontWeight: 500, cursor: "pointer" }}
            >
              Chercher
            </button>
          </form>
        </div>
      )}

      {/* Menu mobile */}
      {menuOpen && (
        <div style={{ background: "#fff", borderBottom: "1px solid rgba(0,0,0,0.10)", padding: "16px 32px", display: "flex", flexDirection: "column", gap: 16 }} className="md:hidden">
          {navLinks.map((l) => (
            <NavLink
              key={l.to}
              to={l.to}
              end={l.to === "/"}
              onClick={() => setMenuOpen(false)}
              style={({ isActive }) => ({
                fontSize: 13, fontWeight: 600, letterSpacing: "1.5px",
                textTransform: "uppercase", textDecoration: "none",
                color: isActive ? "#E30613" : "#050505",
              })}
            >
              {l.label}
            </NavLink>
          ))}
        </div>
      )}
    </nav>
  );
}