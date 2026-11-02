// styles.css'teki sınıf çakışmalarına karşı denetimler. İlerlemem sayfasının
// ısı haritası .takvim-izgara (flex) kullanır; tekrar takviminin 7 sütunlu
// ızgarası aynı adı alınca ısı haritası ızgaraya sarılıp bozuluyordu.
import { readFileSync } from "node:fs";
import { describe, expect, it } from "vitest";

const kok = new URL("../../", import.meta.url);
const oku = (yol: string) => readFileSync(new URL(yol, kok), "utf8");

// En içteki kural bloklarını seçici ve gövde olarak ayırır (@media içindekiler dahil)
function kurallar(css: string) {
  const temiz = css.replace(/\/\*[\s\S]*?\*\//g, "");
  return [...temiz.matchAll(/([^{}]+)\{([^{}]*)\}/g)].map((m) => ({
    seciciler: m[1]!.split(",").map((s) => s.trim()),
    govde: m[2]!,
  }));
}

describe("styles.css sınıf çakışmaları", () => {
  const css = oku("src/styles.css");
  const takvim = kurallar(css).filter((k) => k.seciciler.includes(".takvim-izgara"));

  it(".takvim-izgara yalnızca bir kez, display: flex ile tanımlı", () => {
    expect(takvim).toHaveLength(1);
    expect(takvim[0]!.govde).toMatch(/display:\s*flex/);
  });

  it(".takvim-izgara grid-template-columns içermez", () => {
    for (const k of takvim) expect(k.govde).not.toMatch(/grid-template-columns/);
  });

  it("Tekrar.tsx ısı haritasının sınıfını kullanmaz", () => {
    expect(oku("src/pages/Tekrar.tsx")).not.toContain('"takvim-izgara"');
  });
});
