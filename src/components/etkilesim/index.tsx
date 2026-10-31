// Etkileşimli ders şekilleri: Gorsel.etkilesim alanındaki adla seçilir
import type { ComponentType } from "react";
import type { Gorsel } from "../../gorseller/tip";
import { Adc, Gauss, Histogram, Istatistik, RndToplam } from "./Hafta1";
import { Indeksleme, IstatBoyutu, MatrisIndeks } from "./Hafta2";
import { Donusum, KarmasikUstel, Sistem, TemelDiziler, Ustel } from "./Hafta3";
import { Dogrudan, GrafikYontem, HareketliOrtalama, Kaydirma, Korelasyon, Superpozisyon, Tablo, Zar } from "./Hafta4";
import { Cember, Darbe, FourierSerisi, Sarma, Sinus, SinusToplam, Sure } from "./Hafta5";
import { Baglanti, DikdortgenDtft, DogrusalFaz, FrekansYaniti, KonvTeorem, Modulasyon, Ozfonksiyon } from "./Hafta6";

export const ETKILESIMLER: Record<string, ComponentType<{ g: Gorsel }>> = {
  adc: Adc,
  istatistik: Istatistik,
  histogram: Histogram,
  gauss: Gauss,
  rndtoplam: RndToplam,
  indeksleme: Indeksleme,
  matrisindeks: MatrisIndeks,
  istatboyut: IstatBoyutu,
  temeldizi: TemelDiziler,
  ustel: Ustel,
  karmasikustel: KarmasikUstel,
  donusum: Donusum,
  sistem: Sistem,
  superpozisyon: Superpozisyon,
  dogrudan: Dogrudan,
  grafikyontem: GrafikYontem,
  kaydirma: Kaydirma,
  tablo: Tablo,
  zar: Zar,
  hareketliortalama: HareketliOrtalama,
  korelasyon: Korelasyon,
  cember: Cember,
  sinus: Sinus,
  sinustoplam: SinusToplam,
  fourierserisi: FourierSerisi,
  darbe: Darbe,
  sarma: Sarma,
  sure: Sure,
  ozfonksiyon: Ozfonksiyon,
  frekansyaniti: FrekansYaniti,
  dogrusalfaz: DogrusalFaz,
  baglanti: Baglanti,
  dikdortgendtft: DikdortgenDtft,
  modulasyon: Modulasyon,
  konvteorem: KonvTeorem,
};
