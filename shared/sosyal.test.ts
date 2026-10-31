import { describe, expect, it } from "vitest";
import { konuHatasi, mesajHatasi, oneriHatasi, type OneriGirdi } from "./sosyal";

const temel: OneriGirdi = {
  topicId: "t1", type: "mcq", prompt: "Hangisi doğru?", choices: ["a", "b", "c"], answer: { index: 1 },
  explanation: "Çünkü b.", showName: true,
};

describe("oneriHatasi", () => {
  it("geçerli kapalı uçlu öneriyi kabul eder", () => {
    expect(oneriHatasi(temel)).toBeNull();
    expect(oneriHatasi({ ...temel, type: "tf", choices: [], answer: { value: false } })).toBeNull();
  });
  it("eksik alanları yakalar", () => {
    expect(oneriHatasi({ ...temel, prompt: " " })).not.toBeNull();
    expect(oneriHatasi({ ...temel, answer: { index: 7 } })).not.toBeNull();
    expect(oneriHatasi({ ...temel, showName: "evet" as unknown as boolean })).not.toBeNull();
  });
  it("sayısal öneride cevaplar sayı belirtimi olmalı", () => {
    const sayi = { ...temel, type: "num" as const, choices: [], answer: { blanks: [["1.5±0.01"], ["[1 2 1]"]] } };
    expect(oneriHatasi(sayi)).toBeNull();
    expect(oneriHatasi({ ...sayi, answer: { blanks: [["bir buçuk"]] } })).toMatch(/sayısal/);
  });
});

describe("mesaj ve konu", () => {
  it("boş ve çok uzun metni reddeder", () => {
    expect(mesajHatasi("merhaba")).toBeNull();
    expect(mesajHatasi("   ")).not.toBeNull();
    expect(mesajHatasi("x".repeat(4001))).not.toBeNull();
    expect(konuHatasi("x".repeat(121))).not.toBeNull();
    expect(konuHatasi(42)).not.toBeNull();
  });
});
