import { Link } from "react-router-dom";
import { useTranslation } from "react-i18next";

export default function ProductCard({ product }) {
  const { t } = useTranslation();

  return (
    <article className="product-card-wrap">
      {/* La carte = juste l'image */}
      <div
        className="product-card"
        style={{ backgroundImage: `url(${product.image})` }}
      >
        <div className="product-overlay" />

        <div className="product-actions">
          <Link to={`/product/${product.id}`}>{t('shop.productCard.view')}</Link>
          <Link to={`/tryon?productId=${product.id}`}>{t('shop.productCard.tryOn')}</Link>
        </div>
      </div>

      {/* Infos en dessous */}
      <div className="product-info-below">
        <h3>{product.name}</h3>
        <div className="product-price">
          <strong>{product.price}</strong> FCFA
        </div>
      </div>
    </article>
  );
}