// Laboratuvar kayıtları (üyelerin paylaştığı MATLAB betikleri) ve bildirimler:
// istemci, Worker ve panel ortak tipleri.

export interface KayitOzeti {
  id: string;
  topicId: string;
  topicTitle: string;
  title: string;
  username: string | null;
  begeni: number;
  benBegendim: boolean;
  gizli: boolean;
  createdAt: number;
}

export interface Kayit extends KayitOzeti {
  description: string;
  kod: string;
  benim: boolean;
  bildirdim: boolean;
  silebilir: boolean;
}

export interface KayitGirdi {
  topicId: string;
  title: string;
  description: string;
  kod: string;
}

export type BildirimTuru = "kayit";

export interface PanelBildirim {
  tur: BildirimTuru;
  id: string;
  baslik: string;
  sahibi: string | null;
  sayi: number;
  nedenler: string[];
  gizli: boolean;
  sonTarih: number;
  // Bağlantı: kaydın sayfası
  bag: string;
  // Kaydın kodu, panelde göz atmak için
  icerik: string | null;
}

export const KOD_SINIRI = 20_000;
export const GUNLUK_KAYIT = 5;
export const BILDIRIM_ESIGI = 3;
export const YENI_HESAP_MS = 24 * 60 * 60 * 1000;

const dolu = (v: unknown, en: number, az = 1) => typeof v === "string" && v.trim().length >= az && v.length <= en;

export function kayitHatasi(g: Partial<KayitGirdi>): string | null {
  if (!dolu(g.topicId, 100)) return "Konu seçilmeli.";
  if (!dolu(g.title, 100, 3)) return "Başlık 3 ile 100 karakter arasında olmalı.";
  if (typeof g.description !== "string" || g.description.length > 2000) return "Açıklama en fazla 2000 karakter olabilir.";
  if (!dolu(g.kod, KOD_SINIRI)) return "Kod boş olamaz (en fazla 20 KB).";
  return null;
}

export const NEDENLER = ["Kopya ya da ödevin hazır çözümü", "Hatalı ya da yanıltıcı", "Uygunsuz içerik", "Spam"] as const;

export function bildirimHatasi(b: { tur?: unknown; id?: unknown; neden?: unknown }): string | null {
  if (b.tur !== "kayit") return "Bildirim türü geçersiz.";
  if (!dolu(b.id, 100)) return "Bildirilen içerik geçersiz.";
  if (!dolu(b.neden, 300)) return "Bir neden seç ya da yaz (en fazla 300 karakter).";
  return null;
}
