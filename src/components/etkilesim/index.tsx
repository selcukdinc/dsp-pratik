// Etkileşimli ders şekilleri: Gorsel.etkilesim alanındaki adla seçilir
import type { ComponentType } from "react";
import type { Gorsel } from "../../gorseller/tip";
import { Adc, Gauss, Histogram, Istatistik, RndToplam } from "./Hafta1";

export const ETKILESIMLER: Record<string, ComponentType<{ g: Gorsel }>> = {
  adc: Adc,
  istatistik: Istatistik,
  histogram: Histogram,
  gauss: Gauss,
  rndtoplam: RndToplam,
};
