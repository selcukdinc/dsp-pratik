import { describe, expect, it } from "vitest";
import { sorular } from "../content/sorular/index";
import { KAVRAMLAR } from "./kavramlar";

describe("kavramlar", () => {
  it("her sorunun kavramı tanımlı", () => {
    expect(sorular.filter((s) => !KAVRAMLAR[s.kavram]).map((s) => s.id), "bilinmeyen kavram").toEqual([]);
  });

  it("her kavram en az bir soruda kullanılıyor", () => {
    const kullanilan = new Set(sorular.map((s) => s.kavram));
    expect(Object.keys(KAVRAMLAR).filter((k) => !kullanilan.has(k))).toEqual([]);
  });
});
