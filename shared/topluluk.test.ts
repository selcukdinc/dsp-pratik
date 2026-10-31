import { describe, expect, it } from "vitest";
import { bildirimHatasi, kayitHatasi, type KayitGirdi } from "./topluluk";

const g: KayitGirdi = { topicId: "t", title: "Kare dalga", description: "", kod: "x = 1:10;\nplot(x)" };

describe("kayitHatasi", () => {
  it("geçerli girdiyi kabul eder", () => expect(kayitHatasi(g)).toBeNull());
  it("alanları denetler", () => {
    expect(kayitHatasi({ ...g, kod: " " })).not.toBeNull();
    expect(kayitHatasi({ ...g, kod: "x".repeat(20_001) })).not.toBeNull();
    expect(kayitHatasi({ ...g, title: "ab" })).not.toBeNull();
    expect(kayitHatasi({ ...g, topicId: "" })).not.toBeNull();
    expect(kayitHatasi({ ...g, description: "x".repeat(2001) })).not.toBeNull();
  });
});

describe("bildirimHatasi", () => {
  it("tür ve nedeni denetler", () => {
    expect(bildirimHatasi({ tur: "kayit", id: "a", neden: "Spam" })).toBeNull();
    expect(bildirimHatasi({ tur: "tb", id: "a", neden: "Spam" })).not.toBeNull();
    expect(bildirimHatasi({ tur: "kayit", id: "a", neden: " " })).not.toBeNull();
  });
});
