import { BrowserRouter, Routes, Route } from 'react-router-dom';
import Navbar from './components/layout/Navbar';
import Home from './pages/Home';
import TryOn from './pages/tryon/TryOn';
import ProductDetail from './pages/product/ProductDetail';
import Checkout from './pages/checkout/Checkout';

export default function App() {
  return (
    <BrowserRouter>
      <Navbar />
      <Routes>
        <Route path="/"        element={<Home />} />
        <Route path="/cabine"  element={<TryOn />} />
        <Route path="/produit" element={<ProductDetail />} />
        <Route path="/paiement" element={<Checkout />} />
        {/* Routes Yannick : /catalogue /auth /compte /commandes /admin */}
      </Routes>
    </BrowserRouter>
  );
}