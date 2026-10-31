// Bir sorunun cevabının anlatıldığı ders bölümü. Soru kartındaki "Derste oku"
// bağlantısı buradan gelir; sunumdaki slayt adları öğrenciye bir şey
// söylemediği için gösterilmez.
import { DERSLER } from "./index";

// Hafta -> kavram -> bölümün sırası (0'dan). Kavramlar shared/kavramlar.ts'de.
export const KAVRAM_BOLUMU: Record<number, Record<string, number>> = {
  1: {
    "dsp-giris": 0,
    "adc-niceleme": 1,
    "sinyal-eksen": 1,
    "ortalama-sapma": 2,
    rms: 3,
    "histogram-pmf": 4,
    "normal-dagilim": 5,
    "gurultu-uretimi": 6,
    "kesinlik-dogruluk": 7,
  },
  2: {
    "matlab-temel": 0,
    "vektor-olusturma": 1,
    indeksleme: 1,
    "matris-indeks": 2,
    "eleman-islem": 3,
    mantiksal: 4,
    "fonksiyon-tanim": 5,
    "rastgele-uretim": 6,
    birlestirme: 7,
    "istatistik-boyut": 8,
  },
  3: {
    "dizi-gosterim": 0,
    "temel-diziler": 1,
    "ustel-sinuzoidal": 2,
    periyodiklik: 2,
    simetri: 3,
    "sinyal-donusum": 4,
    "enerji-guc": 5,
    "durtu-ayristirma": 6,
    dogrusallik: 7,
    "sistem-ozellik": 7,
    lti: 8,
  },
  4: {
    "konvolusyon-toplam": 0,
    "konvolusyon-ozellik": 1,
    "dogrudan-hesap": 2,
    "konvolusyon-uzunluk": 3,
    "grafik-yontem": 4,
    "kaydirma-kurali": 5,
    "polinom-carpim": 5,
    "olasilik-konvolusyon": 6,
    "hareketli-ortalama": 7,
    korelasyon: 8,
  },
  5: {
    "sinus-cember": 0,
    "sinus-parametre": 1,
    "sinus-toplam": 2,
    "fourier-serisi": 3,
    spektrum: 4,
    "sarma-kutle-merkezi": 5,
    "euler-formulu": 5,
    "fourier-donusum": 6,
    "fourier-dogrusallik": 6,
  },
  6: {
    ozfonksiyon: 0,
    "frekans-yaniti": 0,
    "db-olcek": 1,
    "grup-gecikmesi": 1,
    "frekans-simetri": 2,
    "dogrusal-faz": 3,
    "tam-geciren": 3,
    "filtre-turleri": 3,
    "sistem-baglanti-frekans": 4,
    dtft: 5,
    "ters-dtft": 5,
    "dtft-ozellik": 6,
    "konvolusyon-teoremi": 6,
    parseval: 6,
    "ters-sistem": 7,
  },
  7: {
    dfs: 0,
    "dft-dtft": 0,
    "dft-hesap": 1,
    "ters-dft": 1,
    "dft-frekans": 2,
    "sifir-doldurma": 2,
    "dft-ozellik": 3,
    "dft-simetri": 3,
    "dairesel-kaydirma": 4,
    "dairesel-konv": 5,
    "dairesel-dogrusal": 6,
    "dft-ile-konvolusyon": 6,
    "ortusme-ekleme": 7,
    "ortusme-kaydetme": 7,
  },
};

export interface SoruBolumu {
  hafta: number;
  // Ders sayfasındaki bölümün sırası (0'dan); bölüm bulunamadıysa null
  bolum: number | null;
  baslik: string;
}

export function soruBolumu(q: { id: string; week: number; kavram?: string | null }): SoruBolumu | null {
  // Önce "Kendini dene"de kullanıldığı bölüm
  for (const d of DERSLER) {
    const i = d.bolumler.findIndex((b) => b.dene?.includes(q.id));
    if (i >= 0) return { hafta: d.hafta, bolum: i, baslik: d.bolumler[i]!.baslik };
  }
  const d = DERSLER.find((x) => x.hafta === q.week);
  if (!d) return null;
  const i = q.kavram ? KAVRAM_BOLUMU[q.week]?.[q.kavram] : undefined;
  if (i !== undefined && d.bolumler[i]) return { hafta: d.hafta, bolum: i, baslik: d.bolumler[i].baslik };
  return { hafta: d.hafta, bolum: null, baslik: d.baslik };
}

export const bolumId = (i: number) => `bolum-${i + 1}`;
