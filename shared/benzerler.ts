// Aynı bilgiyi (çoğu kez yalnızca başka sayılarla) soran sorular. Soru havuzunda
// her gruptan tek soru görünür: kişinin daha önce denediği, yoksa listede ilk
// gelen. Böylece "az önce bunu cevapladım" denen ikizler art arda çıkmaz.
// Aralıklı tekrar bu gruplara bakmaz; orada başka sayılı ikiz, kuralı yeniden
// uygulatmak için işe yarar.
export const BENZERLER: string[][] = [
  // Hafta 1
  ["h1-adc-seviye", "t1-adc-16bit"],
  ["h1-adc-aralik", "t1-adc-fs"],
  ["h1-adc-adim", "t1-adc-adim-12"],
  ["h1-ortalama-hesap", "t1-ortalama-sapma-2"],
  ["h1-varyans-toplam", "t1-varyans-uc"],
  ["h1-rms-dc", "t1-rms-dc-sinus"],
  ["h1-sinus-vrms", "t1-vp-vrms"],
  ["h1-vpp-kare", "t1-ucgen-vpp"],
  ["h1-binning", "t1-kutu-genislik"],
  ["h1-gauss-68", "t1-gauss-95"],
  ["h1-rnd-sigma", "t1-rnd-ortalama"],
  ["h1-kesinlik", "t1-kesin-dogru-degil"],
  // Hafta 2
  ["h2-nan", "t2-inf"],
  ["h2-aralik", "t2-aralik-2"],
  ["h2-linspace", "t2-linspace-2"],
  ["h2-aralik-uzunluk", "t2-aralik-uzunluk-2"],
  ["h2-matris-satir", "t2-sutun"],
  ["h2-dogrusal-indeks", "t2-dogrusal-2"],
  ["h2-eleman-carpim", "t2-bolme"],
  ["h2-mantiksal-sayma", "t2-veya-sayma"],
  ["h2-rand-boyut", "t2-rand-kare"],
  ["h2-cat-boyut", "t2-yatay-boyut"],
  ["h2-mean-boyut", "t2-mean-satir"],
  ["h2-median", "t2-median-tek"],
  // Hafta 3
  ["h3-durtu-deger", "t3-durtu-toplam-2"],
  ["h3-ustel-sonum", "t3-ustel-buyur"],
  ["h3-periyot", "t3-periyot-2"],
  ["h3-periyot-toplam", "t3-periyot-ekok"],
  ["h3-periyot-k", "t3-periyot-k-2"],
  ["h3-cift-kisim", "t3-cift-kisim-2"],
  ["h3-enerji", "t3-enerji-2"],
  ["h3-guc", "t3-guc-cos"],
  ["h3-dogrusal", "t3-dogrusal-degil"],
  ["h3-lti-durtu", "t3-lti-durtu-2"],
  ["h4-durtu-kaydir", "t4-durtu-kaydir-2"],
  ["h4-ilk-ornek", "t4-ilk-ornek-2"],
  ["h4-kaskat-hesap", "t4-kaskat-hesap-2"],
  ["h4-paralel-hesap", "t4-paralel-hesap-2"],
  ["h4-geometrik", "t4-geometrik-2"],
  ["h4-ustel-basamak", "t4-ustel-basamak-2"],
  ["h4-ustel-limit", "t4-ustel-limit-2"],
  ["h4-uzunluk", "t4-uzunluk-2"],
  ["h4-aralik", "t4-aralik-2"],
  ["h4-grafik-hesap", "t4-grafik-hesap-2"],
  ["h4-kaydirma-tum", "t4-kaydirma-2"],
  ["h4-polinom-2", "t4-polinom-3"],
  ["h4-zar-4", "t4-zar-10", "t4-zar-2"],
  ["h4-ma-katsayi", "t4-ma-katsayi-2"],
  ["h4-ma-gecikme", "t4-ma-gecikme-2"],
  ["h4-otokor-0", "t4-otokor-0-2"],
  ["h4-otokor-ustel", "t4-otokor-ustel-2"],
];

const GRUP = new Map(BENZERLER.flatMap((g, i) => g.map((id) => [id, i] as const)));

// Listeyi sırasını bozmadan gruplardan birer soruya indirir. denendi: kişinin
// daha önce denediği sorular; gruptan denenmiş biri varsa o kalır.
export function benzerleriAyikla<T extends { id: string }>(liste: T[], denendi: (id: string) => boolean, gruplar = GRUP): T[] {
  const temsilci = new Map<number, string>();
  for (const q of liste) {
    const g = gruplar.get(q.id);
    if (g === undefined) continue;
    const onceki = temsilci.get(g);
    if (onceki === undefined || (!denendi(onceki) && denendi(q.id))) temsilci.set(g, q.id);
  }
  return liste.filter((q) => {
    const g = gruplar.get(q.id);
    return g === undefined || temsilci.get(g) === q.id;
  });
}

export const grupHaritasi = (gruplar: string[][]) => new Map(gruplar.flatMap((g, i) => g.map((id) => [id, i] as const)));
