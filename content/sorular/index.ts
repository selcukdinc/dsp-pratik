import type { Konu, Soru } from "./tipler.ts";

// Konular haftalara bölünür; her hafta kendi konularını ve soru dosyalarını ekler.
export const konular: Konu[] = [];

// ek-* dosyaları türetilen sorulardır; yedek olanlar havuzda görünmez, tekrarda gelir
export const sorular: Soru[] = [];
