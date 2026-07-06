import React, { useEffect, useMemo, useState } from "react";
import { useNavigate } from "react-router-dom";
import { adminService } from "../../services/adminService";
import "./account-pages.css";

const icon = (type) => ({ order:"🛍️", stock:"📦", review:"⭐", product:"👗", payment:"💳", support:"🎧", info:"🔔" }[type] || "🔔");
const norm = (n) => ({ id:n.id, type:n.type || "info", title:n.title || "Notification", message:n.message || n.description || "", read:Boolean(n.read || n.isRead || n.readAt), date:n.createdAt || n.date || new Date().toISOString() });
const dayLabel = (date) => { const d=new Date(date), t=new Date(), y=new Date(); y.setDate(t.getDate()-1); if(Number.isNaN(d.getTime())) return "Aujourd'hui"; if(d.toDateString()===t.toDateString()) return "Aujourd'hui"; if(d.toDateString()===y.toDateString()) return "Hier"; return d.toLocaleDateString("fr-FR", { day:"2-digit", month:"short", year:"numeric" }); };
const hour = (date) => { const d=new Date(date); return Number.isNaN(d.getTime()) ? "" : d.toLocaleTimeString("fr-FR", { hour:"2-digit", minute:"2-digit" }); };

export default function Notifications() {
  const navigate = useNavigate();
  const [items, setItems] = useState([]);
  const [filter, setFilter] = useState("all");
  const [loading, setLoading] = useState(true);
  const [error, setError] = useState("");

  const load = async () => {
    try {
      setLoading(true); setError("");
      const res = await adminService.getNotifications();
      const payload = res?.data?.data || res?.data || [];
      setItems(Array.isArray(payload) ? payload.map(norm) : []);
    } catch (e) {
      console.error(e); setError("Impossible de charger les notifications.");
    } finally { setLoading(false); }
  };

  useEffect(() => { load(); }, []);

  const visible = useMemo(() => filter === "unread" ? items.filter((n)=>!n.read) : items, [items, filter]);
  const grouped = useMemo(() => visible.reduce((acc,n)=>{ const k=dayLabel(n.date); (acc[k] ||= []).push(n); return acc; }, {}), [visible]);
  const unreadCount = items.filter((n)=>!n.read).length;

  const markRead = async (id) => { try { await adminService.markNotificationRead(id); setItems((p)=>p.map((n)=>n.id===id?{...n,read:true}:n)); } catch(e){ console.error(e); } };
  const markAllRead = async () => { try { await adminService.markAllNotificationsRead(); setItems((p)=>p.map((n)=>({...n,read:true}))); } catch(e){ console.error(e); } };
  const remove = async (id) => { try { await adminService.deleteNotification(id); setItems((p)=>p.filter((n)=>n.id!==id)); } catch(e){ console.error(e); } };

  return (
    <div className="account-page-wrap">
      <div className="account-page-container account-small">
        <div className="account-page-head">
          <button className="account-back-btn" onClick={() => navigate(-1)}>←</button>
          <div><h1>Notifications</h1><p>{unreadCount ? `${unreadCount} notification(s) non lue(s)` : "Tout est à jour"}</p></div>
        </div>

        <div className="account-tabs">
          <button className={filter === "all" ? "active" : ""} onClick={() => setFilter("all")}>Toutes</button>
          <button className={filter === "unread" ? "active" : ""} onClick={() => setFilter("unread")}>Non lues</button>
          <button onClick={markAllRead}>Tout marquer comme lu</button>
        </div>

        {error && <div className="account-error">{error}</div>}
        {loading && <div className="account-skeleton-list">{[1,2,3,4].map(i => <div key={i} className="account-skeleton-card" />)}</div>}
        {!loading && !visible.length && <div className="account-empty"><div>🔔</div><h3>Aucune notification</h3><p>Les informations importantes apparaîtront ici.</p></div>}

        {!loading && Object.entries(grouped).map(([day, list]) => (
          <section key={day} className="notif-group">
            <h3 className="account-section-title">{day}</h3>
            <div className="notif-list">
              {list.map((n) => (
                <article key={n.id} className={`notification-card ${!n.read ? "unread" : ""}`}>
                  <button className="notification-main" onClick={() => markRead(n.id)}>
                    <div className="notification-icon">{icon(n.type)}</div>
                    <div className="notification-text"><div><h3>{n.title}</h3>{!n.read && <span className="unread-dot" />}</div><p>{n.message}</p><small>{hour(n.date)}</small></div>
                  </button>
                  <button className="notification-delete" onClick={() => remove(n.id)}>Supprimer</button>
                </article>
              ))}
            </div>
          </section>
        ))}
      </div>
    </div>
  );
}
