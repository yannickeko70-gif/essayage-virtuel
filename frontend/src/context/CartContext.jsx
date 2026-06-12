import React, { createContext, useContext, useState } from 'react';

const CartContext = createContext();

export function CartProvider({ children }) {
  const [items, setItems] = useState([]);

  const addItem = (product) => {
    setItems(prev => {
      const existing = prev.find(i => i.id === product.id && i.size === product.size && i.color === product.color);
      if (existing) {
        return prev.map(i =>
          i.id === product.id && i.size === product.size && i.color === product.color
            ? { ...i, qty: i.qty + 1 }
            : i
        );
      }
      return [...prev, { ...product, qty: 1 }];
    });
  };

  const removeItem = (id, size, color) =>
    setItems(prev => prev.filter(i => !(i.id === id && i.size === size && i.color === color)));

  const updateQty = (id, size, color, qty) => {
    if (qty <= 0) return removeItem(id, size, color);
    setItems(prev =>
      prev.map(i =>
        i.id === id && i.size === size && i.color === color ? { ...i, qty } : i
      )
    );
  };

  const clearCart = () => setItems([]);

  const total = items.reduce((sum, i) => sum + i.price * i.qty, 0);
  const count = items.reduce((sum, i) => sum + i.qty, 0);

  return (
    <CartContext.Provider value={{ items, addItem, removeItem, updateQty, clearCart, total, count }}>
      {children}
    </CartContext.Provider>
  );
}

export const useCart = () => useContext(CartContext);