import { describe, expect, it } from "vitest";
import { terimleriAyir } from "./terimler";

const yaz = (s: string) => terimleriAyir(s).map((p) => (typeof p === "string" ? p : `${p.metin} (${p.en})`)).join("");

describe("terimleriAyir", () => {
  it("uzun terim önce eşleşir", () => {
    expect(yaz("dairesel konvolüsyon ile konvolüsyon")).toBe("dairesel konvolüsyon (circular convolution) ile konvolüsyon (convolution)");
  });
  it("Türkçe ekleri ve cümle başını kapsar", () => {
    expect(yaz("Konvolüsyon toplamı, konvolüsyonu verir.")).toBe("Konvolüsyon (convolution) toplamı, konvolüsyonu (convolution) verir.");
  });
  it("büyük harfli kısaltmalar kesme işaretli ekleri kapsar, küçük harfle eşleşmez", () => {
    expect(yaz("FFT'nin hızı, fft fonksiyonu")).toBe("FFT'nin (fast Fourier transform) hızı, fft fonksiyonu");
  });
  it("zaten açıklanmış kullanımı atlar", () => {
    expect(yaz("Örtüşme (aliasing) olur")).toBe("Örtüşme (aliasing) olur");
  });
  it("başka kelimelerin içinde eşleşmez", () => {
    expect(yaz("ön örnekleme, yeniden örnekleme")).toBe("ön örnekleme (sampling), yeniden örnekleme (sampling)");
    expect(yaz("DFTx ve aDFT")).toBe("DFTx ve aDFT");
  });
});
