const axios = require("axios");

/**
 * Service d'intégration Campay (Orange Money & MTN Mobile Money — Cameroun).
 *
 * Flux (paiement direct, sans redirection) :
 *  1. initiateCollect() -> Campay envoie une demande de code PIN sur le téléphone du client
 *  2. le client saisit son code PIN sur son téléphone
 *  3. checkStatus() -> on interroge Campay jusqu'à obtenir le statut définitif
 *
 * Statuts renvoyés par Campay : PENDING, SUCCESSFUL, FAILED
 */

const IS_LIVE = process.env.CAMPAY_MODE === "live";

const BASE_URL = IS_LIVE
  ? "https://www.campay.net/api"
  : "https://demo.campay.net/api";

function headers() {
  return {
    "Content-Type": "application/json",
    Authorization: `Token ${process.env.CAMPAY_TOKEN}`,
  };
}

/**
 * Met le numéro au format attendu par Campay : 237 suivi des 9 chiffres.
 * Campay refuse tout numéro sans indicatif pays (erreur ER101).
 */
function normalizePhone(phone) {
  const digits = String(phone || "").replace(/\D/g, "");
  if (digits.startsWith("237")) return digits;
  return "237" + digits.slice(-9);
}

/**
 * Déclenche la demande de paiement sur le téléphone du client.
 * Renvoie la référence de transaction, qui servira à suivre le statut.
 */
async function initiateCollect({ orderId, orderNumber, amount, phone }) {
  if (!process.env.CAMPAY_TOKEN) {
    throw new Error("Clé Campay absente du .env — paiement mobile indisponible");
  }

  const payload = {
    // Campay refuse les décimales (erreur ER201) : on arrondit à l'entier.
    amount: String(Math.round(Number(amount))),
    currency: "XAF",
    from: normalizePhone(phone),
    description: `Commande ${orderNumber} — CFPD TryOn`,
    // external_reference : notre propre identifiant, renvoyé tel quel par Campay
    external_reference: String(orderId),
  };

  const { data } = await axios.post(`${BASE_URL}/collect/`, payload, {
    headers: headers(),
    timeout: 30000,
  });

  return {
    reference: data.reference,
    status: data.status,
    operator: data.operator || null,
    ussdCode: data.ussd_code || null,
  };
}

/**
 * Interroge Campay sur le statut réel d'une transaction.
 * C'est LA source de vérité : on ne se fie jamais au navigateur du client.
 */
async function checkStatus(reference) {
  const { data } = await axios.get(`${BASE_URL}/transaction/${reference}/`, {
    headers: await headers(),
    timeout: 30000,
  });

  // Campay renvoie la CHAÎNE "None" (et non null) pour les champs vides
  const propre = (v) => (v && v !== "None" ? v : null);

  return {
    status: data.status,              // PENDING | SUCCESSFUL | FAILED
    amount: data.amount || null,
    operator: propre(data.operator),
    orderId: propre(data.external_reference),
    reason: propre(data.reason),      // motif en cas d'échec
  };
}

module.exports = { initiateCollect, checkStatus };