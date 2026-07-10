// Dans index.js, juste après les imports
import React from 'react';
import ReactDOM from 'react-dom/client';
import App from './App';
import reportWebVitals from './reportWebVitals';
import { CartProvider } from './context/CartContext';
import { AuthProvider } from './context/AuthContext';
import './index.css';
import './App.css';

// ─── IGNORER L'ERREUR RESIZEOBSERVER ───
const originalError = console.error;
console.error = (...args) => {
  if (args[0]?.includes?.('ResizeObserver loop completed with undelivered notifications')) {
    return;
  }
  originalError(...args);
};

// Ignorer également l'erreur au niveau global
window.addEventListener('error', (e) => {
  if (e.message?.includes?.('ResizeObserver loop completed with undelivered notifications')) {
    e.stopPropagation();
    e.preventDefault();
    return false;
  }
});

const root = ReactDOM.createRoot(document.getElementById('root'));

root.render(
  <React.StrictMode>
    <AuthProvider>
      <CartProvider>
        <App />
      </CartProvider>
    </AuthProvider>
  </React.StrictMode>
);

reportWebVitals();