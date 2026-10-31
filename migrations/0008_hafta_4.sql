-- Bu dosya scripts/sorular-sql.ts ile content/sorular'dan üretildi, elle düzenlemeyin.

INSERT INTO topics (id, title, week, sort) VALUES ('dsp-giris', 'DSP''ye giriş: sürekli ve ayrık sinyaller', 1, 1)
  ON CONFLICT(id) DO UPDATE SET title = excluded.title, week = excluded.week, sort = excluded.sort;
INSERT INTO topics (id, title, week, sort) VALUES ('istatistik', 'Ortalama, standart sapma ve rms', 1, 2)
  ON CONFLICT(id) DO UPDATE SET title = excluded.title, week = excluded.week, sort = excluded.sort;
INSERT INTO topics (id, title, week, sort) VALUES ('olasilik', 'Histogram, pmf, pdf ve normal dağılım', 1, 3)
  ON CONFLICT(id) DO UPDATE SET title = excluded.title, week = excluded.week, sort = excluded.sort;
INSERT INTO topics (id, title, week, sort) VALUES ('gurultu-dogruluk', 'Gürültü üretimi, kesinlik ve doğruluk', 1, 4)
  ON CONFLICT(id) DO UPDATE SET title = excluded.title, week = excluded.week, sort = excluded.sort;
INSERT INTO topics (id, title, week, sort) VALUES ('matlab-temel', 'MATLAB: betik, vektör ve indeksleme', 2, 1)
  ON CONFLICT(id) DO UPDATE SET title = excluded.title, week = excluded.week, sort = excluded.sort;
INSERT INTO topics (id, title, week, sort) VALUES ('matlab-matris', 'MATLAB: matrisler ve işlemler', 2, 2)
  ON CONFLICT(id) DO UPDATE SET title = excluded.title, week = excluded.week, sort = excluded.sort;
INSERT INTO topics (id, title, week, sort) VALUES ('matlab-fonksiyon', 'MATLAB: işleçler, fonksiyonlar ve rastgele sayılar', 2, 3)
  ON CONFLICT(id) DO UPDATE SET title = excluded.title, week = excluded.week, sort = excluded.sort;
INSERT INTO topics (id, title, week, sort) VALUES ('matlab-istatistik', 'MATLAB: birleştirme ve istatistik fonksiyonları', 2, 4)
  ON CONFLICT(id) DO UPDATE SET title = excluded.title, week = excluded.week, sort = excluded.sort;
INSERT INTO topics (id, title, week, sort) VALUES ('ayrik-diziler', 'Temel diziler, üstel ve sinüzoidal diziler', 3, 1)
  ON CONFLICT(id) DO UPDATE SET title = excluded.title, week = excluded.week, sort = excluded.sort;
INSERT INTO topics (id, title, week, sort) VALUES ('sinyal-islemleri', 'Simetri, dönüşümler, enerji ve güç', 3, 2)
  ON CONFLICT(id) DO UPDATE SET title = excluded.title, week = excluded.week, sort = excluded.sort;
INSERT INTO topics (id, title, week, sort) VALUES ('ayrik-sistemler', 'Ayrık zamanlı sistemler ve LTI', 3, 3)
  ON CONFLICT(id) DO UPDATE SET title = excluded.title, week = excluded.week, sort = excluded.sort;
INSERT INTO topics (id, title, week, sort) VALUES ('konvolusyon-temel', 'Konvolüsyon toplamı, özellikleri ve doğrudan hesap', 4, 1)
  ON CONFLICT(id) DO UPDATE SET title = excluded.title, week = excluded.week, sort = excluded.sort;
INSERT INTO topics (id, title, week, sort) VALUES ('konvolusyon-hesap', 'Uzunluk, grafik yöntem, kaydırma kuralı ve polinomlar', 4, 2)
  ON CONFLICT(id) DO UPDATE SET title = excluded.title, week = excluded.week, sort = excluded.sort;
INSERT INTO topics (id, title, week, sort) VALUES ('konvolusyon-uygulama', 'Zarlar, hareketli ortalama ve korelasyon', 4, 3)
  ON CONFLICT(id) DO UPDATE SET title = excluded.title, week = excluded.week, sort = excluded.sort;

INSERT INTO questions (id, topic_id, week, type, source, prompt, payload, answer, explanation, difficulty, source_ref, active)
VALUES ('h1-dsp-avantaj', 'dsp-giris', 1, 'mcq', 'derived', 'Aşağıdakilerden hangisi dijital sinyal işlemenin analog işlemeye göre bir üstünlüğü **değildir**?', '{"choices":["Yazılım değiştirilerek aynı donanım başka bir işlem yapabilir","Hassasiyet bit sayısı artırılarak yükseltilebilir","Sonuçlar sıcaklıkla ve bileşen yaşlanmasıyla kaymaz","Her bant genişliğindeki sinyali gerçek zamanlı işleyebilir"]}', '{"index":3}', 'Çok geniş bantlı sinyalleri gerçek zamanlı işleyecek kadar hızlı dijital devre her zaman yoktur; bu durumda analog ya da optik işleme tek seçenek olabilir. Diğer üçü dijital işlemenin bilinen üstünlükleridir.', 1, 'Hafta 1, Giriş', 1)
  ON CONFLICT(id) DO UPDATE SET topic_id = excluded.topic_id, week = excluded.week, type = excluded.type,
    source = excluded.source, prompt = excluded.prompt, payload = excluded.payload, answer = excluded.answer,
    explanation = excluded.explanation, difficulty = excluded.difficulty, source_ref = excluded.source_ref, active = 1
  WHERE questions.updated_at IS NULL;
INSERT INTO questions (id, topic_id, week, type, source, prompt, payload, answer, explanation, difficulty, source_ref, active)
VALUES ('h1-dsp-genis-bant', 'dsp-giris', 1, 'tf', 'original', 'Bant genişliği çok geniş olan bazı sinyallerin gerçek zamanlı işlenmesinde analog ya da optik sinyal işleme tek uygun çözüm olabilir.', '{}', '{"value":true}', 'Doğru. DSP her soruna çözüm değildir; dijital devreler yeterince hızlı değilse geniş bantlı sinyaller analog ya da optik olarak işlenir.', 1, 'Hafta 1, Giriş', 1)
  ON CONFLICT(id) DO UPDATE SET topic_id = excluded.topic_id, week = excluded.week, type = excluded.type,
    source = excluded.source, prompt = excluded.prompt, payload = excluded.payload, answer = excluded.answer,
    explanation = excluded.explanation, difficulty = excluded.difficulty, source_ref = excluded.source_ref, active = 1
  WHERE questions.updated_at IS NULL;
INSERT INTO questions (id, topic_id, week, type, source, prompt, payload, answer, explanation, difficulty, source_ref, active)
VALUES ('h1-dsp-programlanabilir', 'dsp-giris', 1, 'fill', 'derived', 'Dijital işleme donanımında yapılan işlem yazılımla değiştirilebildiği için dijital donanıma ____ denir.', '{"blanks":1}', '{"blanks":[["programlanabilir","programlanabilir donanım"]]}', 'Dijital donanım programlanabilirdir: filtreyi değiştirmek için devreyi yeniden kurmak yerine programı değiştirmek yeter. Bu, tasarıma esneklik katar.', 1, 'Hafta 1, Giriş', 1)
  ON CONFLICT(id) DO UPDATE SET topic_id = excluded.topic_id, week = excluded.week, type = excluded.type,
    source = excluded.source, prompt = excluded.prompt, payload = excluded.payload, answer = excluded.answer,
    explanation = excluded.explanation, difficulty = excluded.difficulty, source_ref = excluded.source_ref, active = 1
  WHERE questions.updated_at IS NULL;
INSERT INTO questions (id, topic_id, week, type, source, prompt, payload, answer, explanation, difficulty, source_ref, active)
VALUES ('h1-adc-seviye', 'dsp-giris', 1, 'num', 'derived', '10 bitlik bir analogdan dijitale dönüştürücü gerilimi kaç farklı seviyeden birine yuvarlar?', '{"blanks":1}', '{"blanks":[["1024"]]}', 'B bitlik ADC''de seviye sayısı $2^B$''dir: $2^{10} = 1024$.', 1, 'Hafta 1, Sürekli ve ayrık sinyaller', 1)
  ON CONFLICT(id) DO UPDATE SET topic_id = excluded.topic_id, week = excluded.week, type = excluded.type,
    source = excluded.source, prompt = excluded.prompt, payload = excluded.payload, answer = excluded.answer,
    explanation = excluded.explanation, difficulty = excluded.difficulty, source_ref = excluded.source_ref, active = 1
  WHERE questions.updated_at IS NULL;
INSERT INTO questions (id, topic_id, week, type, source, prompt, payload, answer, explanation, difficulty, source_ref, active)
VALUES ('h1-adc-aralik', 'dsp-giris', 1, 'num', 'derived', 'Saniyede 8000 örnek alan bir ADC''de ardışık iki örnek arasındaki süre kaç milisaniyedir?', '{"blanks":1}', '{"blanks":[["0.125"]]}', '$T_s = 1/f_s = 1/8000$ s = 0,125 ms.', 1, 'Hafta 1, Sürekli ve ayrık sinyaller', 1)
  ON CONFLICT(id) DO UPDATE SET topic_id = excluded.topic_id, week = excluded.week, type = excluded.type,
    source = excluded.source, prompt = excluded.prompt, payload = excluded.payload, answer = excluded.answer,
    explanation = excluded.explanation, difficulty = excluded.difficulty, source_ref = excluded.source_ref, active = 1
  WHERE questions.updated_at IS NULL;
INSERT INTO questions (id, topic_id, week, type, source, prompt, payload, answer, explanation, difficulty, source_ref, active)
VALUES ('h1-adc-adim', 'dsp-giris', 1, 'num', 'derived', '0–5 V aralığında çalışan 8 bitlik bir ADC''nin niceleme adımı yaklaşık kaç **mV**''tur? (adım = aralık / seviye sayısı)', '{"blanks":1}', '{"blanks":[["19.53±0.05"]]}', '8 bit $2^8 = 256$ seviye verir. Adım 5 V / 256 ≈ 0,01953 V ≈ 19,53 mV.', 2, 'Hafta 1, Sürekli ve ayrık sinyaller', 1)
  ON CONFLICT(id) DO UPDATE SET topic_id = excluded.topic_id, week = excluded.week, type = excluded.type,
    source = excluded.source, prompt = excluded.prompt, payload = excluded.payload, answer = excluded.answer,
    explanation = excluded.explanation, difficulty = excluded.difficulty, source_ref = excluded.source_ref, active = 1
  WHERE questions.updated_at IS NULL;
INSERT INTO questions (id, topic_id, week, type, source, prompt, payload, answer, explanation, difficulty, source_ref, active)
VALUES ('h1-adc-bit-gerekli', 'dsp-giris', 1, 'num', 'derived', 'Bir ölçme aralığını en az 1000 seviyeye bölmek için ADC''nin en az kaç biti olmalıdır?', '{"blanks":1}', '{"blanks":[["10"]]}', '$2^9 = 512$ yetmez, $2^{10} = 1024 \ge 1000$. En az 10 bit gerekir.', 2, 'Hafta 1, Sürekli ve ayrık sinyaller', 1)
  ON CONFLICT(id) DO UPDATE SET topic_id = excluded.topic_id, week = excluded.week, type = excluded.type,
    source = excluded.source, prompt = excluded.prompt, payload = excluded.payload, answer = excluded.answer,
    explanation = excluded.explanation, difficulty = excluded.difficulty, source_ref = excluded.source_ref, active = 1
  WHERE questions.updated_at IS NULL;
INSERT INTO questions (id, topic_id, week, type, source, prompt, payload, answer, explanation, difficulty, source_ref, active)
VALUES ('h1-ayrik-tanim', 'dsp-giris', 1, 'mcq', 'original', 'Bir sinyal ADC''den geçirilince hangi parametreleri nicelenir?', '{"choices":["Yalnızca genliği","Yalnızca zamanı","Hem zamanı hem genliği","Yalnızca frekansı"]}', '{"index":2}', 'ADC zamanı örnekleme hızıyla ($T_s = 1/f_s$ adımlarla), genliği bit sayısıyla ($2^B$ seviye) niceler. İkisi de nicelenmiş sinyale ayrık sinyal denir.', 1, 'Hafta 1, Sürekli ve ayrık sinyaller', 1)
  ON CONFLICT(id) DO UPDATE SET topic_id = excluded.topic_id, week = excluded.week, type = excluded.type,
    source = excluded.source, prompt = excluded.prompt, payload = excluded.payload, answer = excluded.answer,
    explanation = excluded.explanation, difficulty = excluded.difficulty, source_ref = excluded.source_ref, active = 1
  WHERE questions.updated_at IS NULL;
INSERT INTO questions (id, topic_id, week, type, source, prompt, payload, answer, explanation, difficulty, source_ref, active)
VALUES ('h1-eksen-bagimli', 'dsp-giris', 1, 'mcq', 'original', 'Bir sinyal grafiğinde **dikey** eksen için kullanılan adlardan hangisi değildir?', '{"choices":["Genlik","Ordinat","Bağımlı değişken","Apsis"]}', '{"index":3}', 'Apsis yatay eksenin adıdır (x ekseni, bağımsız değişken). Dikey eksene genlik, y ekseni, bağımlı değişken ya da ordinat denir.', 1, 'Hafta 1, Sinyal grafiği ve alan', 1)
  ON CONFLICT(id) DO UPDATE SET topic_id = excluded.topic_id, week = excluded.week, type = excluded.type,
    source = excluded.source, prompt = excluded.prompt, payload = excluded.payload, answer = excluded.answer,
    explanation = excluded.explanation, difficulty = excluded.difficulty, source_ref = excluded.source_ref, active = 1
  WHERE questions.updated_at IS NULL;
INSERT INTO questions (id, topic_id, week, type, source, prompt, payload, answer, explanation, difficulty, source_ref, active)
VALUES ('h1-alan-ornek', 'dsp-giris', 1, 'fill', 'original', 'Yatay ekseni yalnızca "örnek numarası" diye etiketlenmiş bir sinyal ____ alanında sayılır.', '{"blanks":1}', '{"blanks":[["zaman"]]}', 'Sinyal elde etmenin en yaygın yolu eşit zaman aralıklarıyla örneklemek olduğu için örnek numarasıyla çizilen sinyaller zaman alanındadır.', 1, 'Hafta 1, Sinyal grafiği ve alan', 1)
  ON CONFLICT(id) DO UPDATE SET topic_id = excluded.topic_id, week = excluded.week, type = excluded.type,
    source = excluded.source, prompt = excluded.prompt, payload = excluded.payload, answer = excluded.answer,
    explanation = excluded.explanation, difficulty = excluded.difficulty, source_ref = excluded.source_ref, active = 1
  WHERE questions.updated_at IS NULL;
INSERT INTO questions (id, topic_id, week, type, source, prompt, payload, answer, explanation, difficulty, source_ref, active)
VALUES ('h1-alan-uzaysal', 'dsp-giris', 1, 'mcq', 'original', 'Bir jeofizikçi yeryüzü boyunca her 10 metrede bir kaya yoğunluğu ölçüyor. Bu ölçümlerden oluşan sinyal hangi alandadır?', '{"choices":["Zaman alanı","Frekans alanı","Uzaysal alan","Genlik alanı"]}', '{"index":2}', 'Bağımsız değişken mesafedir; mesafe uzayın bir ölçüsü olduğu için sinyal uzaysal alandadır.', 1, 'Hafta 1, Sinyal grafiği ve alan', 1)
  ON CONFLICT(id) DO UPDATE SET topic_id = excluded.topic_id, week = excluded.week, type = excluded.type,
    source = excluded.source, prompt = excluded.prompt, payload = excluded.payload, answer = excluded.answer,
    explanation = excluded.explanation, difficulty = excluded.difficulty, source_ref = excluded.source_ref, active = 1
  WHERE questions.updated_at IS NULL;
INSERT INTO questions (id, topic_id, week, type, source, prompt, payload, answer, explanation, difficulty, source_ref, active)
VALUES ('h1-ortalama-hesap', 'istatistik', 1, 'num', 'derived', 'x = [2 6 4 8] sinyalinin ortalamasını ve (N − 1''li) standart sapmasını bul.

μ = ____ , σ = ____', '{"blanks":2}', '{"blanks":[["5"],["2.582±0.005"]]}', 'μ = 20/4 = 5. Sapmalar −3, 1, −1, 3; kareleri toplamı 20. σ² = 20/3 ≈ 6,67, σ ≈ 2,582.', 1, 'Hafta 1, Ortalama ve standart sapma', 1)
  ON CONFLICT(id) DO UPDATE SET topic_id = excluded.topic_id, week = excluded.week, type = excluded.type,
    source = excluded.source, prompt = excluded.prompt, payload = excluded.payload, answer = excluded.answer,
    explanation = excluded.explanation, difficulty = excluded.difficulty, source_ref = excluded.source_ref, active = 1
  WHERE questions.updated_at IS NULL;
INSERT INTO questions (id, topic_id, week, type, source, prompt, payload, answer, explanation, difficulty, source_ref, active)
VALUES ('h1-n-eksi-1', 'istatistik', 1, 'mcq', 'original', 'Bir sinyalin bir parçasından standart sapma hesaplarken neden N yerine N − 1''e bölünür?', '{"choices":["Ortalama veriden hesaplandığı için sapmalar küçük çıkar","İlk örnek her zaman hatalı olduğu için hesaba katılmaz","N − 1''e bölmek sonucu her zaman tam sayı yapar","Son örnek ortalamaya eşit olduğu için sapması sıfırdır"]}', '{"index":0}', 'Örnek ortalaması verinin kendisinden hesaplanır ve verilere gerçek ortalamadan daha yakındır; bu yüzden sapmaların kareleri olduğundan küçük çıkar. N − 1''e bölmek bu eğilimi düzeltir. Bütün popülasyon biliniyorsa N''ye bölünür.', 2, 'Hafta 1, Ortalama ve standart sapma', 1)
  ON CONFLICT(id) DO UPDATE SET topic_id = excluded.topic_id, week = excluded.week, type = excluded.type,
    source = excluded.source, prompt = excluded.prompt, payload = excluded.payload, answer = excluded.answer,
    explanation = excluded.explanation, difficulty = excluded.difficulty, source_ref = excluded.source_ref, active = 1
  WHERE questions.updated_at IS NULL;
INSERT INTO questions (id, topic_id, week, type, source, prompt, payload, answer, explanation, difficulty, source_ref, active)
VALUES ('h1-varyans', 'istatistik', 1, 'fill', 'original', 'Standart sapmanın karesine, yani σ² niceliğine ____ denir.', '{"blanks":1}', '{"blanks":[["varyans"]]}', 'σ² varyanstır ve sinyalin dalgalanmasının gücünü temsil eder.', 1, 'Hafta 1, Ortalama ve standart sapma', 1)
  ON CONFLICT(id) DO UPDATE SET topic_id = excluded.topic_id, week = excluded.week, type = excluded.type,
    source = excluded.source, prompt = excluded.prompt, payload = excluded.payload, answer = excluded.answer,
    explanation = excluded.explanation, difficulty = excluded.difficulty, source_ref = excluded.source_ref, active = 1
  WHERE questions.updated_at IS NULL;
INSERT INTO questions (id, topic_id, week, type, source, prompt, payload, answer, explanation, difficulty, source_ref, active)
VALUES ('h1-dc-ac', 'istatistik', 1, 'tf', 'original', 'Bir sinyalin standart sapması, sinyalin DC bileşenini de içerir.', '{}', '{"value":false}', 'Yanlış. Standart sapma örneklerin ortalamadan sapmasını ölçer, yani yalnızca AC kısmı ölçer. DC''yi de içeren ölçü rms''tir.', 1, 'Hafta 1, Ortalama ve standart sapma', 1)
  ON CONFLICT(id) DO UPDATE SET topic_id = excluded.topic_id, week = excluded.week, type = excluded.type,
    source = excluded.source, prompt = excluded.prompt, payload = excluded.payload, answer = excluded.answer,
    explanation = excluded.explanation, difficulty = excluded.difficulty, source_ref = excluded.source_ref, active = 1
  WHERE questions.updated_at IS NULL;
INSERT INTO questions (id, topic_id, week, type, source, prompt, payload, answer, explanation, difficulty, source_ref, active)
VALUES ('h1-varyans-toplam', 'istatistik', 1, 'num', 'derived', 'Bir sinyale birbirinden bağımsız iki gürültü biniyor: σ₁ = 3 mV ve σ₂ = 4 mV. Toplam gürültünün standart sapması kaç mV''tur?', '{"blanks":1}', '{"blanks":[["5"]]}', 'Bağımsız kaynaklarda varyanslar toplanır: σ² = 9 + 16 = 25, σ = 5 mV. Standart sapmalar toplanmaz (7 değil).', 2, 'Hafta 1, Ortalama ve standart sapma', 1)
  ON CONFLICT(id) DO UPDATE SET topic_id = excluded.topic_id, week = excluded.week, type = excluded.type,
    source = excluded.source, prompt = excluded.prompt, payload = excluded.payload, answer = excluded.answer,
    explanation = excluded.explanation, difficulty = excluded.difficulty, source_ref = excluded.source_ref, active = 1
  WHERE questions.updated_at IS NULL;
INSERT INTO questions (id, topic_id, week, type, source, prompt, payload, answer, explanation, difficulty, source_ref, active)
VALUES ('h1-rms-dc', 'istatistik', 1, 'num', 'derived', 'Bir sinyal 3 V''luk DC ile standart sapması 4 V olan bir AC bileşenin toplamı. Örnek sayısı çok büyükken sinyalin rms değeri kaç volttur?', '{"blanks":1}', '{"blanks":[["5"]]}', '$x_{rms}^2 = \mu^2 + \sigma^2 = 9 + 16 = 25$, rms = 5 V. rms hem DC''yi hem AC''yi ölçer.', 2, 'Hafta 1, rms ve dalga biçimleri', 1)
  ON CONFLICT(id) DO UPDATE SET topic_id = excluded.topic_id, week = excluded.week, type = excluded.type,
    source = excluded.source, prompt = excluded.prompt, payload = excluded.payload, answer = excluded.answer,
    explanation = excluded.explanation, difficulty = excluded.difficulty, source_ref = excluded.source_ref, active = 1
  WHERE questions.updated_at IS NULL;
INSERT INTO questions (id, topic_id, week, type, source, prompt, payload, answer, explanation, difficulty, source_ref, active)
VALUES ('h1-sinus-vrms', 'istatistik', 1, 'num', 'original', 'Tepe genliği 10 V olan, DC''siz bir sinüs dalganın rms değeri kaç volttur?', '{"blanks":1}', '{"blanks":[["7.071±0.01"]]}', '$V_{rms} = V_p/\sqrt{2} = 10/1{,}414 \approx 7{,}07$ V.', 1, 'Hafta 1, rms ve dalga biçimleri', 1)
  ON CONFLICT(id) DO UPDATE SET topic_id = excluded.topic_id, week = excluded.week, type = excluded.type,
    source = excluded.source, prompt = excluded.prompt, payload = excluded.payload, answer = excluded.answer,
    explanation = excluded.explanation, difficulty = excluded.difficulty, source_ref = excluded.source_ref, active = 1
  WHERE questions.updated_at IS NULL;
INSERT INTO questions (id, topic_id, week, type, source, prompt, payload, answer, explanation, difficulty, source_ref, active)
VALUES ('h1-vpp-kare', 'istatistik', 1, 'num', 'original', 'Ortalaması sıfır olan bir kare dalganın standart sapması 1,5 V. Tepeden tepeye değeri kaç volttur?', '{"blanks":1}', '{"blanks":[["3"]]}', 'Kare dalgada her örnek ortalamadan tam yarım Vpp uzaktadır, bu yüzden $V_{pp} = 2\sigma = 3$ V.', 1, 'Hafta 1, rms ve dalga biçimleri', 1)
  ON CONFLICT(id) DO UPDATE SET topic_id = excluded.topic_id, week = excluded.week, type = excluded.type,
    source = excluded.source, prompt = excluded.prompt, payload = excluded.payload, answer = excluded.answer,
    explanation = excluded.explanation, difficulty = excluded.difficulty, source_ref = excluded.source_ref, active = 1
  WHERE questions.updated_at IS NULL;
INSERT INTO questions (id, topic_id, week, type, source, prompt, payload, answer, explanation, difficulty, source_ref, active)
VALUES ('h1-vpp-gurultu', 'istatistik', 1, 'mcq', 'original', 'Standart sapması 0,1 V olan Gauss gürültünün osiloskopta görülen tepeden tepeye değeri kabaca ne kadardır?', '{"choices":["0,2 V","0,28 V","0,6–0,8 V","1,5–2 V"]}', '{"index":2}', 'Rastgele gürültünün belirli bir tepe değeri yoktur; gözle görülen Vpp kabaca 6σ ile 8σ arasındadır: 0,6–0,8 V. 0,2 V kare dalganın, 0,28 V sinüsün oranıdır.', 2, 'Hafta 1, rms ve dalga biçimleri', 1)
  ON CONFLICT(id) DO UPDATE SET topic_id = excluded.topic_id, week = excluded.week, type = excluded.type,
    source = excluded.source, prompt = excluded.prompt, payload = excluded.payload, answer = excluded.answer,
    explanation = excluded.explanation, difficulty = excluded.difficulty, source_ref = excluded.source_ref, active = 1
  WHERE questions.updated_at IS NULL;
INSERT INTO questions (id, topic_id, week, type, source, prompt, payload, answer, explanation, difficulty, source_ref, active)
VALUES ('h1-rms-sigma-esit', 'istatistik', 1, 'tf', 'original', 'DC bileşeni olmayan bir sinyalin rms değeri standart sapmasına eşittir.', '{}', '{"value":true}', 'Doğru. $x_{rms}^2 = \mu^2 + \sigma^2$ ve μ = 0 ise rms = σ olur.', 1, 'Hafta 1, rms ve dalga biçimleri', 1)
  ON CONFLICT(id) DO UPDATE SET topic_id = excluded.topic_id, week = excluded.week, type = excluded.type,
    source = excluded.source, prompt = excluded.prompt, payload = excluded.payload, answer = excluded.answer,
    explanation = excluded.explanation, difficulty = excluded.difficulty, source_ref = excluded.source_ref, active = 1
  WHERE questions.updated_at IS NULL;
INSERT INTO questions (id, topic_id, week, type, source, prompt, payload, answer, explanation, difficulty, source_ref, active)
VALUES ('h1-hist-ortalama', 'olasilik', 1, 'num', 'derived', 'Bir sinyalin histogramında değer 0''dan 2, değer 1''den 5, değer 2''den 3 örnek var; başka değer yok. Histogramdan sinyalin ortalamasını bul.', '{"blanks":1}', '{"blanks":[["1.1"]]}', 'N = 2 + 5 + 3 = 10. μ = (0·2 + 1·5 + 2·3) / 10 = 11/10 = 1,1.', 2, 'Hafta 1, Histogram, pmf ve pdf', 1)
  ON CONFLICT(id) DO UPDATE SET topic_id = excluded.topic_id, week = excluded.week, type = excluded.type,
    source = excluded.source, prompt = excluded.prompt, payload = excluded.payload, answer = excluded.answer,
    explanation = excluded.explanation, difficulty = excluded.difficulty, source_ref = excluded.source_ref, active = 1
  WHERE questions.updated_at IS NULL;
INSERT INTO questions (id, topic_id, week, type, source, prompt, payload, answer, explanation, difficulty, source_ref, active)
VALUES ('h1-hist-toplam', 'olasilik', 1, 'fill', 'original', 'Bir sinyalin histogramındaki bütün değerlerin toplamı sinyaldeki ____ sayısına eşittir.', '{"blanks":1}', '{"blanks":[["örnek","ornek","numune"]]}', 'Her örnek histogramda tam bir kez sayılır, bu yüzden $\sum H_i = N$.', 1, 'Hafta 1, Histogram, pmf ve pdf', 1)
  ON CONFLICT(id) DO UPDATE SET topic_id = excluded.topic_id, week = excluded.week, type = excluded.type,
    source = excluded.source, prompt = excluded.prompt, payload = excluded.payload, answer = excluded.answer,
    explanation = excluded.explanation, difficulty = excluded.difficulty, source_ref = excluded.source_ref, active = 1
  WHERE questions.updated_at IS NULL;
INSERT INTO questions (id, topic_id, week, type, source, prompt, payload, answer, explanation, difficulty, source_ref, active)
VALUES ('h1-pmf-olasilik', 'olasilik', 1, 'num', 'derived', 'Değerleri 0, 1, 2, 3, 4 olabilen bir sinyalin pmf''i sırasıyla [0.1 0.2 0.4 0.2 0.1]. Rastgele bir örneğin 2''den büyük olma olasılığı nedir?', '{"blanks":1}', '{"blanks":[["0.3"]]}', '2''den büyük değerler 3 ve 4''tür: 0,2 + 0,1 = 0,3. Bir aralığın olasılığı için o aralıktaki pmf değerleri toplanır.', 2, 'Hafta 1, Histogram, pmf ve pdf', 1)
  ON CONFLICT(id) DO UPDATE SET topic_id = excluded.topic_id, week = excluded.week, type = excluded.type,
    source = excluded.source, prompt = excluded.prompt, payload = excluded.payload, answer = excluded.answer,
    explanation = excluded.explanation, difficulty = excluded.difficulty, source_ref = excluded.source_ref, active = 1
  WHERE questions.updated_at IS NULL;
INSERT INTO questions (id, topic_id, week, type, source, prompt, payload, answer, explanation, difficulty, source_ref, active)
VALUES ('h1-pdf-alan', 'olasilik', 1, 'mcq', 'original', 'Sürekli bir sinyalin pdf''i verildiğinde sinyalin a ile b arasında olma olasılığı nasıl bulunur?', '{"choices":["pdf''in a ile b arasında kalan alanı alınır","pdf''in a noktasındaki değeri okunur","pdf''in a ile b noktalarındaki değerleri çarpılır","pdf''in en büyük değeri b − a ile bölünür"]}', '{"index":0}', 'pdf''in dikey ekseni olasılık değil olasılık yoğunluğudur. Bir aralığın olasılığı eğrinin o aralıkta altında kalan alandır; toplam alan 1''dir.', 1, 'Hafta 1, Histogram, pmf ve pdf', 1)
  ON CONFLICT(id) DO UPDATE SET topic_id = excluded.topic_id, week = excluded.week, type = excluded.type,
    source = excluded.source, prompt = excluded.prompt, payload = excluded.payload, answer = excluded.answer,
    explanation = excluded.explanation, difficulty = excluded.difficulty, source_ref = excluded.source_ref, active = 1
  WHERE questions.updated_at IS NULL;
INSERT INTO questions (id, topic_id, week, type, source, prompt, payload, answer, explanation, difficulty, source_ref, active)
VALUES ('h1-binning', 'olasilik', 1, 'num', 'original', '0,0 ile 10,0 arasında değer alan kayan noktalı bir sinyal 1000 kutulu bir histogramla sayılıyor (kutu 0: 0–0,01). 7,2049 değerindeki bir örnek kaçıncı kutuya düşer?', '{"blanks":1}', '{"blanks":[["720"]]}', 'Kutu genişliği 10 / 1000 = 0,01. 7,2049 / 0,01 = 720,49; aşağı yuvarlanınca kutu 720.', 2, 'Hafta 1, Histogram, pmf ve pdf', 1)
  ON CONFLICT(id) DO UPDATE SET topic_id = excluded.topic_id, week = excluded.week, type = excluded.type,
    source = excluded.source, prompt = excluded.prompt, payload = excluded.payload, answer = excluded.answer,
    explanation = excluded.explanation, difficulty = excluded.difficulty, source_ref = excluded.source_ref, active = 1
  WHERE questions.updated_at IS NULL;
INSERT INTO questions (id, topic_id, week, type, source, prompt, payload, answer, explanation, difficulty, source_ref, active)
VALUES ('h1-hist-puruz', 'olasilik', 1, 'mcq', 'original', 'Bir histogramı çıkarırken kullanılan örnek sayısı 4 katına çıkarılırsa histogramın pürüzlülüğü (istatistiksel gürültüsü) ne olur?', '{"choices":["Değişmez","Yarıya iner","Dörtte birine iner","İki katına çıkar"]}', '{"index":1}', 'Pürüzlülük örnek sayısının kareköküyle ters orantılıdır: √4 = 2, yani yarıya iner.', 2, 'Hafta 1, Histogram, pmf ve pdf', 1)
  ON CONFLICT(id) DO UPDATE SET topic_id = excluded.topic_id, week = excluded.week, type = excluded.type,
    source = excluded.source, prompt = excluded.prompt, payload = excluded.payload, answer = excluded.answer,
    explanation = excluded.explanation, difficulty = excluded.difficulty, source_ref = excluded.source_ref, active = 1
  WHERE questions.updated_at IS NULL;
INSERT INTO questions (id, topic_id, week, type, source, prompt, payload, answer, explanation, difficulty, source_ref, active)
VALUES ('h1-gauss-68', 'olasilik', 1, 'num', 'original', 'Normal dağılımlı bir sinyalin örneklerinin yaklaşık yüzde kaçı μ − σ ile μ + σ arasındadır?', '{"blanks":1}', '{"blanks":[["68±1"]]}', 'Yaklaşık %68''i ±1σ, %95''i ±2σ, %99,7''si ±3σ içindedir.', 1, 'Hafta 1, Normal dağılım', 1)
  ON CONFLICT(id) DO UPDATE SET topic_id = excluded.topic_id, week = excluded.week, type = excluded.type,
    source = excluded.source, prompt = excluded.prompt, payload = excluded.payload, answer = excluded.answer,
    explanation = excluded.explanation, difficulty = excluded.difficulty, source_ref = excluded.source_ref, active = 1
  WHERE questions.updated_at IS NULL;
INSERT INTO questions (id, topic_id, week, type, source, prompt, payload, answer, explanation, difficulty, source_ref, active)
VALUES ('h1-gauss-uc-sigma', 'olasilik', 1, 'mcq', 'derived', 'Bir ADC''nin okuduğu değerler μ = 100, σ = 5 olan normal dağılıma uyuyor. Okumaların yaklaşık %99,7''si hangi aralıktadır?', '{"choices":["95 – 105","90 – 110","85 – 115","80 – 120"]}', '{"index":2}', '%99,7 aralığı μ ± 3σ''dır: 100 ± 15, yani 85 ile 115 arası.', 2, 'Hafta 1, Normal dağılım', 1)
  ON CONFLICT(id) DO UPDATE SET topic_id = excluded.topic_id, week = excluded.week, type = excluded.type,
    source = excluded.source, prompt = excluded.prompt, payload = excluded.payload, answer = excluded.answer,
    explanation = excluded.explanation, difficulty = excluded.difficulty, source_ref = excluded.source_ref, active = 1
  WHERE questions.updated_at IS NULL;
INSERT INTO questions (id, topic_id, week, type, source, prompt, payload, answer, explanation, difficulty, source_ref, active)
VALUES ('h1-gauss-tepe', 'olasilik', 1, 'num', 'derived', 'μ = 0, σ = 2 olan normal dağılımın pdf''inin tepe değeri (x = 0''daki değeri) nedir?', '{"blanks":1}', '{"blanks":[["0.1995±0.001"]]}', 'Tepe $1/(\sqrt{2\pi}\,\sigma) = 1/(2{,}5066 \cdot 2) \approx 0{,}1995$.', 3, 'Hafta 1, Normal dağılım', 1)
  ON CONFLICT(id) DO UPDATE SET topic_id = excluded.topic_id, week = excluded.week, type = excluded.type,
    source = excluded.source, prompt = excluded.prompt, payload = excluded.payload, answer = excluded.answer,
    explanation = excluded.explanation, difficulty = excluded.difficulty, source_ref = excluded.source_ref, active = 1
  WHERE questions.updated_at IS NULL;
INSERT INTO questions (id, topic_id, week, type, source, prompt, payload, answer, explanation, difficulty, source_ref, active)
VALUES ('h1-merkezi-limit', 'olasilik', 1, 'fill', 'original', 'Birçok rastgele sayı toplandığında, sayılar hangi dağılımdan gelirse gelsin toplamın normal dağılıma yaklaştığını söyleyen teoreme ____ limit teoremi denir.', '{"blanks":1}', '{"blanks":[["merkezi","merkezî"]]}', 'Merkezi limit teoremi, doğadaki rastgele sinyallerin çoğunun neden Gauss biçimli olduğunu açıklar.', 1, 'Hafta 1, Normal dağılım', 1)
  ON CONFLICT(id) DO UPDATE SET topic_id = excluded.topic_id, week = excluded.week, type = excluded.type,
    source = excluded.source, prompt = excluded.prompt, payload = excluded.payload, answer = excluded.answer,
    explanation = excluded.explanation, difficulty = excluded.difficulty, source_ref = excluded.source_ref, active = 1
  WHERE questions.updated_at IS NULL;
INSERT INTO questions (id, topic_id, week, type, source, prompt, payload, answer, explanation, difficulty, source_ref, active)
VALUES ('h1-gauss-sigma-tepe', 'olasilik', 1, 'tf', 'derived', 'Normal dağılımda σ iki katına çıkarılırsa pdf eğrisinin tepe yüksekliği yarıya iner.', '{}', '{"value":true}', 'Doğru. Tepe yüksekliği $1/(\sqrt{2\pi}\,\sigma)$''dır, σ ile ters orantılıdır. Eğri yayılırken alan 1''de kalsın diye alçalır.', 2, 'Hafta 1, Normal dağılım', 1)
  ON CONFLICT(id) DO UPDATE SET topic_id = excluded.topic_id, week = excluded.week, type = excluded.type,
    source = excluded.source, prompt = excluded.prompt, payload = excluded.payload, answer = excluded.answer,
    explanation = excluded.explanation, difficulty = excluded.difficulty, source_ref = excluded.source_ref, active = 1
  WHERE questions.updated_at IS NULL;
INSERT INTO questions (id, topic_id, week, type, source, prompt, payload, answer, explanation, difficulty, source_ref, active)
VALUES ('h1-rnd-sigma', 'gurultu-dogruluk', 1, 'num', 'original', '0 ile 1 arasında düzgün dağılımlı bir rastgele sayı üretecinin (RND) standart sapması nedir?', '{"blanks":1}', '{"blanks":[["0.2887±0.002","0.29±0.005"]]}', 'Düzgün dağılımın standart sapması $1/\sqrt{12} \approx 0{,}289$''dur; ortalaması 0,5''tir.', 2, 'Hafta 1, Rastgele sayılarla gürültü', 1)
  ON CONFLICT(id) DO UPDATE SET topic_id = excluded.topic_id, week = excluded.week, type = excluded.type,
    source = excluded.source, prompt = excluded.prompt, payload = excluded.payload, answer = excluded.answer,
    explanation = excluded.explanation, difficulty = excluded.difficulty, source_ref = excluded.source_ref, active = 1
  WHERE questions.updated_at IS NULL;
INSERT INTO questions (id, topic_id, week, type, source, prompt, payload, answer, explanation, difficulty, source_ref, active)
VALUES ('h1-rnd-12', 'gurultu-dogruluk', 1, 'num', 'original', '12 RND''nin toplamından ortalaması 2, standart sapması 0,5 olan bir Gauss gürültü örneği üretiliyor. Toplam 8,0 çıktıysa üretilen örnek kaçtır?', '{"blanks":1}', '{"blanks":[["3"]]}', 'x = (toplam − 6) · σ + μ = (8 − 6) · 0,5 + 2 = 3. On iki RND''nin toplamının ortalaması 6, standart sapması 1''dir.', 2, 'Hafta 1, Rastgele sayılarla gürültü', 1)
  ON CONFLICT(id) DO UPDATE SET topic_id = excluded.topic_id, week = excluded.week, type = excluded.type,
    source = excluded.source, prompt = excluded.prompt, payload = excluded.payload, answer = excluded.answer,
    explanation = excluded.explanation, difficulty = excluded.difficulty, source_ref = excluded.source_ref, active = 1
  WHERE questions.updated_at IS NULL;
INSERT INTO questions (id, topic_id, week, type, source, prompt, payload, answer, explanation, difficulty, source_ref, active)
VALUES ('h1-rnd-iki', 'gurultu-dogruluk', 1, 'mcq', 'original', 'İki RND''nin (0–1 arası düzgün) toplamının pdf''i hangi biçimdedir?', '{"choices":["Düzgün","Üçgen","Gauss","Kare"]}', '{"index":1}', 'Toplam 0 ile 2 arasındadır; 1 civarını veren birleşimler çok, uçları veren birleşimler azdır. pdf üçgendir, ortalaması 1, standart sapması 1/√6 ≈ 0,41.', 1, 'Hafta 1, Rastgele sayılarla gürültü', 1)
  ON CONFLICT(id) DO UPDATE SET topic_id = excluded.topic_id, week = excluded.week, type = excluded.type,
    source = excluded.source, prompt = excluded.prompt, payload = excluded.payload, answer = excluded.answer,
    explanation = excluded.explanation, difficulty = excluded.difficulty, source_ref = excluded.source_ref, active = 1
  WHERE questions.updated_at IS NULL;
INSERT INTO questions (id, topic_id, week, type, source, prompt, payload, answer, explanation, difficulty, source_ref, active)
VALUES ('h1-kesinlik', 'gurultu-dogruluk', 1, 'mcq', 'original', '1000 m''deki bir hedefe yapılan sonar ölçümleri 990 m ile 1010 m arasında geniş saçılıyor ama ortalamaları 1000,1 m. Sistem için ne söylenir?', '{"choices":["Doğruluk iyi, kesinlik kötü","Kesinlik iyi, doğruluk kötü","İkisi de iyi","İkisi de kötü"]}', '{"index":0}', 'Ortalama gerçek değere çok yakın: doğruluk iyi. Ölçümler birbirinden uzak (σ büyük): kesinlik kötü. Çaresi çok ölçümün ortalamasını almaktır.', 2, 'Hafta 1, Kesinlik ve doğruluk', 1)
  ON CONFLICT(id) DO UPDATE SET topic_id = excluded.topic_id, week = excluded.week, type = excluded.type,
    source = excluded.source, prompt = excluded.prompt, payload = excluded.payload, answer = excluded.answer,
    explanation = excluded.explanation, difficulty = excluded.difficulty, source_ref = excluded.source_ref, active = 1
  WHERE questions.updated_at IS NULL;
INSERT INTO questions (id, topic_id, week, type, source, prompt, payload, answer, explanation, difficulty, source_ref, active)
VALUES ('h1-ortalama-iyilestirir', 'gurultu-dogruluk', 1, 'tf', 'original', 'Çok sayıda ölçümün ortalamasını almak, bir ölçüm sistemindeki sistematik hatayı (doğruluk hatasını) giderir.', '{}', '{"value":false}', 'Yanlış. Ortalama almak rastgele hatayı (kesinliği) iyileştirir; sistematik hata her ölçümde aynı olduğu için ortalamada aynen kalır. Onun çaresi kalibrasyondur.', 2, 'Hafta 1, Kesinlik ve doğruluk', 1)
  ON CONFLICT(id) DO UPDATE SET topic_id = excluded.topic_id, week = excluded.week, type = excluded.type,
    source = excluded.source, prompt = excluded.prompt, payload = excluded.payload, answer = excluded.answer,
    explanation = excluded.explanation, difficulty = excluded.difficulty, source_ref = excluded.source_ref, active = 1
  WHERE questions.updated_at IS NULL;
INSERT INTO questions (id, topic_id, week, type, source, prompt, payload, answer, explanation, difficulty, source_ref, active)
VALUES ('h1-kalibrasyon', 'gurultu-dogruluk', 1, 'fill', 'original', 'Doğruluğu kötü, yani sistematik hatası olan bir ölçüm sisteminin çaresi ____ yapmaktır.', '{"blanks":1}', '{"blanks":[["kalibrasyon"]]}', 'Sistematik hata kalibrasyonla giderilir; rastgele hata ise ortalama alarak azaltılır.', 1, 'Hafta 1, Kesinlik ve doğruluk', 1)
  ON CONFLICT(id) DO UPDATE SET topic_id = excluded.topic_id, week = excluded.week, type = excluded.type,
    source = excluded.source, prompt = excluded.prompt, payload = excluded.payload, answer = excluded.answer,
    explanation = excluded.explanation, difficulty = excluded.difficulty, source_ref = excluded.source_ref, active = 1
  WHERE questions.updated_at IS NULL;
INSERT INTO questions (id, topic_id, week, type, source, prompt, payload, answer, explanation, difficulty, source_ref, active)
VALUES ('h2-noktali-virgul', 'matlab-temel', 2, 'mcq', 'original', 'MATLAB''da bir komutun sonuna noktalı virgül (`;`) konursa ne olur?', '{"choices":["Komut çalışır ama sonucu komut penceresine yazılmaz","Komut çalışmaz, yorum satırı sayılır","Sonuç ans değişkenine yazılır, asıl değişken değişmez","Komut bir sonraki satırla birleştirilir"]}', '{"index":0}', 'Noktalı virgül yalnızca çıktıyı bastırır; komut yine çalışır ve değişken atanır. Noktalı virgül yoksa sonuç `x = ...` biçiminde yazılır.', 1, 'Hafta 2, MATLAB işlemleri', 1)
  ON CONFLICT(id) DO UPDATE SET topic_id = excluded.topic_id, week = excluded.week, type = excluded.type,
    source = excluded.source, prompt = excluded.prompt, payload = excluded.payload, answer = excluded.answer,
    explanation = excluded.explanation, difficulty = excluded.difficulty, source_ref = excluded.source_ref, active = 1
  WHERE questions.updated_at IS NULL;
INSERT INTO questions (id, topic_id, week, type, source, prompt, payload, answer, explanation, difficulty, source_ref, active)
VALUES ('h2-ans', 'matlab-temel', 2, 'fill', 'original', 'Komut penceresine yalnızca `3 + 4` yazılırsa sonuç hangi değişkene konur?', '{"blanks":1}', '{"blanks":[["ans"]]}', 'Bir değişkene atanmamış sonuç `ans` (answer) değişkenine konur: `ans = 7`.', 1, 'Hafta 2, MATLAB işlemleri', 1)
  ON CONFLICT(id) DO UPDATE SET topic_id = excluded.topic_id, week = excluded.week, type = excluded.type,
    source = excluded.source, prompt = excluded.prompt, payload = excluded.payload, answer = excluded.answer,
    explanation = excluded.explanation, difficulty = excluded.difficulty, source_ref = excluded.source_ref, active = 1
  WHERE questions.updated_at IS NULL;
INSERT INTO questions (id, topic_id, week, type, source, prompt, payload, answer, explanation, difficulty, source_ref, active)
VALUES ('h2-yorum', 'matlab-temel', 2, 'fill', 'original', 'Bir MATLAB betiğini Run Section ile ayrı ayrı çalıştırılabilen bölümlere ayırmak için satır başına hangi işaret yazılır?', '{"blanks":1}', '{"blanks":[["%%"]]}', '`%%` ile başlayan yorum satırı yeni bir bölüm başlatır. Tek `%` yalnızca yorumdur.', 1, 'Hafta 2, MATLAB işlemleri', 1)
  ON CONFLICT(id) DO UPDATE SET topic_id = excluded.topic_id, week = excluded.week, type = excluded.type,
    source = excluded.source, prompt = excluded.prompt, payload = excluded.payload, answer = excluded.answer,
    explanation = excluded.explanation, difficulty = excluded.difficulty, source_ref = excluded.source_ref, active = 1
  WHERE questions.updated_at IS NULL;
INSERT INTO questions (id, topic_id, week, type, source, prompt, payload, answer, explanation, difficulty, source_ref, active)
VALUES ('h2-nan', 'matlab-temel', 2, 'fill', 'original', 'MATLAB''da `0/0` işleminin sonucu nedir?', '{"blanks":1}', '{"blanks":[["NaN"]]}', '0/0 tanımsızdır ve MATLAB `NaN` (not a number) verir. `1/0` ise `Inf` verir.', 1, 'Hafta 2, MATLAB işlemleri', 1)
  ON CONFLICT(id) DO UPDATE SET topic_id = excluded.topic_id, week = excluded.week, type = excluded.type,
    source = excluded.source, prompt = excluded.prompt, payload = excluded.payload, answer = excluded.answer,
    explanation = excluded.explanation, difficulty = excluded.difficulty, source_ref = excluded.source_ref, active = 1
  WHERE questions.updated_at IS NULL;
INSERT INTO questions (id, topic_id, week, type, source, prompt, payload, answer, explanation, difficulty, source_ref, active)
VALUES ('h2-clear', 'matlab-temel', 2, 'mcq', 'original', 'Çalışma alanındaki (workspace) bütün değişkenleri silen komut hangisidir?', '{"choices":["clc","clear","close all","clf"]}', '{"index":1}', '`clear` değişkenleri siler. `clc` yalnızca komut penceresini temizler, `close all` şekil pencerelerini kapatır, `clf` geçerli şekli temizler.', 1, 'Hafta 2, MATLAB işlemleri', 1)
  ON CONFLICT(id) DO UPDATE SET topic_id = excluded.topic_id, week = excluded.week, type = excluded.type,
    source = excluded.source, prompt = excluded.prompt, payload = excluded.payload, answer = excluded.answer,
    explanation = excluded.explanation, difficulty = excluded.difficulty, source_ref = excluded.source_ref, active = 1
  WHERE questions.updated_at IS NULL;
INSERT INTO questions (id, topic_id, week, type, source, prompt, payload, answer, explanation, difficulty, source_ref, active)
VALUES ('h2-aralik', 'matlab-temel', 2, 'num', 'original', '`x1 = 2:3:17` komutunun ürettiği vektörü yaz.', '{"blanks":1}', '{"blanks":[["[2 5 8 11 14 17]"]]}', '2''den başlar, 3''er artar ve 17''yi geçmeden durur: 2, 5, 8, 11, 14, 17.', 1, 'Hafta 2, Vektör oluşturma', 1)
  ON CONFLICT(id) DO UPDATE SET topic_id = excluded.topic_id, week = excluded.week, type = excluded.type,
    source = excluded.source, prompt = excluded.prompt, payload = excluded.payload, answer = excluded.answer,
    explanation = excluded.explanation, difficulty = excluded.difficulty, source_ref = excluded.source_ref, active = 1
  WHERE questions.updated_at IS NULL;
INSERT INTO questions (id, topic_id, week, type, source, prompt, payload, answer, explanation, difficulty, source_ref, active)
VALUES ('h2-aralik-uzunluk', 'matlab-temel', 2, 'num', 'derived', '`length(0:0.25:2)` kaçtır?', '{"blanks":1}', '{"blanks":[["9"]]}', '0, 0,25, 0,5, ..., 2: (2 − 0)/0,25 + 1 = 9 eleman.', 2, 'Hafta 2, Vektör oluşturma', 1)
  ON CONFLICT(id) DO UPDATE SET topic_id = excluded.topic_id, week = excluded.week, type = excluded.type,
    source = excluded.source, prompt = excluded.prompt, payload = excluded.payload, answer = excluded.answer,
    explanation = excluded.explanation, difficulty = excluded.difficulty, source_ref = excluded.source_ref, active = 1
  WHERE questions.updated_at IS NULL;
INSERT INTO questions (id, topic_id, week, type, source, prompt, payload, answer, explanation, difficulty, source_ref, active)
VALUES ('h2-linspace', 'matlab-temel', 2, 'num', 'original', '`linspace(0, 1, 5)` komutunun ürettiği vektörü yaz.', '{"blanks":1}', '{"blanks":[["[0 0.25 0.5 0.75 1]"]]}', '0 ile 1 dahil 5 eşit aralıklı değer: aralık (1 − 0)/(5 − 1) = 0,25.', 1, 'Hafta 2, Vektör oluşturma', 1)
  ON CONFLICT(id) DO UPDATE SET topic_id = excluded.topic_id, week = excluded.week, type = excluded.type,
    source = excluded.source, prompt = excluded.prompt, payload = excluded.payload, answer = excluded.answer,
    explanation = excluded.explanation, difficulty = excluded.difficulty, source_ref = excluded.source_ref, active = 1
  WHERE questions.updated_at IS NULL;
INSERT INTO questions (id, topic_id, week, type, source, prompt, payload, answer, explanation, difficulty, source_ref, active)
VALUES ('h2-geri-sayma', 'matlab-temel', 2, 'num', 'derived', '`18:-4:3` komutunun ürettiği vektörü yaz.', '{"blanks":1}', '{"blanks":[["[18 14 10 6]"]]}', '18''den başlayıp 4''er azalır; 2 sınırın (3) altında kaldığı için alınmaz: 18, 14, 10, 6.', 2, 'Hafta 2, Vektör oluşturma', 1)
  ON CONFLICT(id) DO UPDATE SET topic_id = excluded.topic_id, week = excluded.week, type = excluded.type,
    source = excluded.source, prompt = excluded.prompt, payload = excluded.payload, answer = excluded.answer,
    explanation = excluded.explanation, difficulty = excluded.difficulty, source_ref = excluded.source_ref, active = 1
  WHERE questions.updated_at IS NULL;
INSERT INTO questions (id, topic_id, week, type, source, prompt, payload, answer, explanation, difficulty, source_ref, active)
VALUES ('h2-aralik-son', 'matlab-temel', 2, 'tf', 'derived', '`1:2:10` ifadesinin son elemanı 10''dur.', '{}', '{"value":false}', 'Yanlış. 1, 3, 5, 7, 9''dan sonraki adım 11 olur ve sınırı aşar; son eleman 9''dur.', 1, 'Hafta 2, Vektör oluşturma', 1)
  ON CONFLICT(id) DO UPDATE SET topic_id = excluded.topic_id, week = excluded.week, type = excluded.type,
    source = excluded.source, prompt = excluded.prompt, payload = excluded.payload, answer = excluded.answer,
    explanation = excluded.explanation, difficulty = excluded.difficulty, source_ref = excluded.source_ref, active = 1
  WHERE questions.updated_at IS NULL;
INSERT INTO questions (id, topic_id, week, type, source, prompt, payload, answer, explanation, difficulty, source_ref, active)
VALUES ('h2-indeks-end', 'matlab-temel', 2, 'num', 'original', '`x = [2 3.5 6 7 8.2 -2 -5 6];` için `x(end-2:end)` nedir?', '{"blanks":1}', '{"blanks":[["[-2 -5 6]"]]}', '`end` = 8; `end-2:end` = 6:8. Elemanlar −2, −5, 6.', 1, 'Hafta 2, İndeksleme', 1)
  ON CONFLICT(id) DO UPDATE SET topic_id = excluded.topic_id, week = excluded.week, type = excluded.type,
    source = excluded.source, prompt = excluded.prompt, payload = excluded.payload, answer = excluded.answer,
    explanation = excluded.explanation, difficulty = excluded.difficulty, source_ref = excluded.source_ref, active = 1
  WHERE questions.updated_at IS NULL;
INSERT INTO questions (id, topic_id, week, type, source, prompt, payload, answer, explanation, difficulty, source_ref, active)
VALUES ('h2-indeks-adim', 'matlab-temel', 2, 'num', 'derived', '`y = [9 4 1 7 3 8];` için `y(1:2:end)` nedir?', '{"blanks":1}', '{"blanks":[["[9 1 3]"]]}', 'İndisler 1, 3, 5: değerler 9, 1, 3.', 2, 'Hafta 2, İndeksleme', 1)
  ON CONFLICT(id) DO UPDATE SET topic_id = excluded.topic_id, week = excluded.week, type = excluded.type,
    source = excluded.source, prompt = excluded.prompt, payload = excluded.payload, answer = excluded.answer,
    explanation = excluded.explanation, difficulty = excluded.difficulty, source_ref = excluded.source_ref, active = 1
  WHERE questions.updated_at IS NULL;
INSERT INTO questions (id, topic_id, week, type, source, prompt, payload, answer, explanation, difficulty, source_ref, active)
VALUES ('h2-indeks-sifir', 'matlab-temel', 2, 'mcq', 'derived', '`x = [5 6 7];` tanımlıyken `x(0)` yazılırsa ne olur?', '{"choices":["5 döner","7 döner","Hata verir","Boş vektör döner"]}', '{"index":2}', 'MATLAB''da indisler 1''den başlar; 0 geçerli bir indis değildir ve hata verir. İlk eleman `x(1)`''dir.', 1, 'Hafta 2, İndeksleme', 1)
  ON CONFLICT(id) DO UPDATE SET topic_id = excluded.topic_id, week = excluded.week, type = excluded.type,
    source = excluded.source, prompt = excluded.prompt, payload = excluded.payload, answer = excluded.answer,
    explanation = excluded.explanation, difficulty = excluded.difficulty, source_ref = excluded.source_ref, active = 1
  WHERE questions.updated_at IS NULL;
INSERT INTO questions (id, topic_id, week, type, source, prompt, payload, answer, explanation, difficulty, source_ref, active)
VALUES ('h2-matris-satir', 'matlab-matris', 2, 'num', 'original', '`A = [2 4 6; 1 3 5; 7 8 9];` için `A(2, :)` nedir?', '{"blanks":1}', '{"blanks":[["[1 3 5]"]]}', '`A(2, :)` 2. satırın bütün sütunlarıdır: 1, 3, 5.', 1, 'Hafta 2, Matris oluşturma ve işlemleri', 1)
  ON CONFLICT(id) DO UPDATE SET topic_id = excluded.topic_id, week = excluded.week, type = excluded.type,
    source = excluded.source, prompt = excluded.prompt, payload = excluded.payload, answer = excluded.answer,
    explanation = excluded.explanation, difficulty = excluded.difficulty, source_ref = excluded.source_ref, active = 1
  WHERE questions.updated_at IS NULL;
INSERT INTO questions (id, topic_id, week, type, source, prompt, payload, answer, explanation, difficulty, source_ref, active)
VALUES ('h2-dogrusal-indeks', 'matlab-matris', 2, 'num', 'original', '`A = [2 4 6; 1 3 5; 7 8 9];` için `A(4)` kaçtır?', '{"blanks":1}', '{"blanks":[["4"]]}', 'Doğrusal indeks sütun sütun sayar: 2, 1, 7 (1. sütun), sonra 4. Yani `A(4)` = `A(1, 2)` = 4.', 2, 'Hafta 2, Matris oluşturma ve işlemleri', 1)
  ON CONFLICT(id) DO UPDATE SET topic_id = excluded.topic_id, week = excluded.week, type = excluded.type,
    source = excluded.source, prompt = excluded.prompt, payload = excluded.payload, answer = excluded.answer,
    explanation = excluded.explanation, difficulty = excluded.difficulty, source_ref = excluded.source_ref, active = 1
  WHERE questions.updated_at IS NULL;
INSERT INTO questions (id, topic_id, week, type, source, prompt, payload, answer, explanation, difficulty, source_ref, active)
VALUES ('h2-find', 'matlab-matris', 2, 'num', 'original', '`A = [3 8 1; 6 2 9];` için `find(A > 5)` hangi indisleri döndürür? (sütun vektörünü satır gibi yazabilirsin)', '{"blanks":1}', '{"blanks":[["[2 3 6]"]]}', 'Sütun sırası: 3, 6, 8, 2, 1, 9. 5''ten büyükler 6, 8 ve 9; doğrusal indeksleri 2, 3 ve 6.', 2, 'Hafta 2, Matris oluşturma ve işlemleri', 1)
  ON CONFLICT(id) DO UPDATE SET topic_id = excluded.topic_id, week = excluded.week, type = excluded.type,
    source = excluded.source, prompt = excluded.prompt, payload = excluded.payload, answer = excluded.answer,
    explanation = excluded.explanation, difficulty = excluded.difficulty, source_ref = excluded.source_ref, active = 1
  WHERE questions.updated_at IS NULL;
INSERT INTO questions (id, topic_id, week, type, source, prompt, payload, answer, explanation, difficulty, source_ref, active)
VALUES ('h2-dogrusal-formul', 'matlab-matris', 2, 'num', 'derived', '4 satırlı bir matriste 3. satır, 2. sütundaki elemanın doğrusal indeksi kaçtır?', '{"blanks":1}', '{"blanks":[["7"]]}', 'Doğrusal indeks (j − 1)·r + i = (2 − 1)·4 + 3 = 7.', 2, 'Hafta 2, Matris oluşturma ve işlemleri', 1)
  ON CONFLICT(id) DO UPDATE SET topic_id = excluded.topic_id, week = excluded.week, type = excluded.type,
    source = excluded.source, prompt = excluded.prompt, payload = excluded.payload, answer = excluded.answer,
    explanation = excluded.explanation, difficulty = excluded.difficulty, source_ref = excluded.source_ref, active = 1
  WHERE questions.updated_at IS NULL;
INSERT INTO questions (id, topic_id, week, type, source, prompt, payload, answer, explanation, difficulty, source_ref, active)
VALUES ('h2-eleman-carpim', 'matlab-matris', 2, 'num', 'derived', '`[1 2 3] .* [4 5 6]` nedir?', '{"blanks":1}', '{"blanks":[["[4 10 18]"]]}', 'Eleman eleman çarpım: 1·4, 2·5, 3·6.', 1, 'Hafta 2, Matris işlemleri', 1)
  ON CONFLICT(id) DO UPDATE SET topic_id = excluded.topic_id, week = excluded.week, type = excluded.type,
    source = excluded.source, prompt = excluded.prompt, payload = excluded.payload, answer = excluded.answer,
    explanation = excluded.explanation, difficulty = excluded.difficulty, source_ref = excluded.source_ref, active = 1
  WHERE questions.updated_at IS NULL;
INSERT INTO questions (id, topic_id, week, type, source, prompt, payload, answer, explanation, difficulty, source_ref, active)
VALUES ('h2-matris-carpim', 'matlab-matris', 2, 'num', 'original', '`[2 0; 1 3] * [1 2; 0 1]` matris çarpımının sonucunu satır satır yaz (ör. `[a b; c d]`).', '{"blanks":1}', '{"blanks":[["[2 4; 1 5]"]]}', '1. satır: 2·1 + 0·0 = 2, 2·2 + 0·1 = 4. 2. satır: 1·1 + 3·0 = 1, 1·2 + 3·1 = 5.', 2, 'Hafta 2, Matris işlemleri', 1)
  ON CONFLICT(id) DO UPDATE SET topic_id = excluded.topic_id, week = excluded.week, type = excluded.type,
    source = excluded.source, prompt = excluded.prompt, payload = excluded.payload, answer = excluded.answer,
    explanation = excluded.explanation, difficulty = excluded.difficulty, source_ref = excluded.source_ref, active = 1
  WHERE questions.updated_at IS NULL;
INSERT INTO questions (id, topic_id, week, type, source, prompt, payload, answer, explanation, difficulty, source_ref, active)
VALUES ('h2-kare-hata', 'matlab-matris', 2, 'mcq', 'derived', '`x = [1 2 3];` vektörünün her elemanının karesini almak için hangisi yazılır?', '{"choices":["x^2","x.^2","x*x","x''^2"]}', '{"index":1}', '`.^` eleman eleman kuvvettir. `x^2` ve `x*x` matris işlemidir ve 1×3''lük bir vektörde hata verir.', 1, 'Hafta 2, Matris işlemleri', 1)
  ON CONFLICT(id) DO UPDATE SET topic_id = excluded.topic_id, week = excluded.week, type = excluded.type,
    source = excluded.source, prompt = excluded.prompt, payload = excluded.payload, answer = excluded.answer,
    explanation = excluded.explanation, difficulty = excluded.difficulty, source_ref = excluded.source_ref, active = 1
  WHERE questions.updated_at IS NULL;
INSERT INTO questions (id, topic_id, week, type, source, prompt, payload, answer, explanation, difficulty, source_ref, active)
VALUES ('h2-us', 'matlab-matris', 2, 'num', 'original', '`2.^[1 2 3]` nedir?', '{"blanks":1}', '{"blanks":[["[2 4 8]"]]}', '2''nin her elemana kuvveti: 2¹, 2², 2³.', 1, 'Hafta 2, Matris işlemleri', 1)
  ON CONFLICT(id) DO UPDATE SET topic_id = excluded.topic_id, week = excluded.week, type = excluded.type,
    source = excluded.source, prompt = excluded.prompt, payload = excluded.payload, answer = excluded.answer,
    explanation = excluded.explanation, difficulty = excluded.difficulty, source_ref = excluded.source_ref, active = 1
  WHERE questions.updated_at IS NULL;
INSERT INTO questions (id, topic_id, week, type, source, prompt, payload, answer, explanation, difficulty, source_ref, active)
VALUES ('h2-det', 'matlab-matris', 2, 'num', 'original', '`det([4 1; 2 3])` kaçtır?', '{"blanks":1}', '{"blanks":[["10"]]}', '2×2 determinant: 4·3 − 1·2 = 10.', 2, 'Hafta 2, Matris işlemleri', 1)
  ON CONFLICT(id) DO UPDATE SET topic_id = excluded.topic_id, week = excluded.week, type = excluded.type,
    source = excluded.source, prompt = excluded.prompt, payload = excluded.payload, answer = excluded.answer,
    explanation = excluded.explanation, difficulty = excluded.difficulty, source_ref = excluded.source_ref, active = 1
  WHERE questions.updated_at IS NULL;
INSERT INTO questions (id, topic_id, week, type, source, prompt, payload, answer, explanation, difficulty, source_ref, active)
VALUES ('h2-esit-degil', 'matlab-fonksiyon', 2, 'fill', 'original', 'MATLAB''da "eşit değil" işleci nasıl yazılır?', '{"blanks":1}', '{"blanks":[["~="]]}', 'Eşit değil `~=` ile yazılır. `==` eşitlik denetimi, `=` atamadır.', 1, 'Hafta 2, İlişkisel semboller', 1)
  ON CONFLICT(id) DO UPDATE SET topic_id = excluded.topic_id, week = excluded.week, type = excluded.type,
    source = excluded.source, prompt = excluded.prompt, payload = excluded.payload, answer = excluded.answer,
    explanation = excluded.explanation, difficulty = excluded.difficulty, source_ref = excluded.source_ref, active = 1
  WHERE questions.updated_at IS NULL;
INSERT INTO questions (id, topic_id, week, type, source, prompt, payload, answer, explanation, difficulty, source_ref, active)
VALUES ('h2-mantiksal-sayma', 'matlab-fonksiyon', 2, 'num', 'derived', '`x = [4 -1 7 0 2 9];` için `sum(x > 2)` kaçtır?', '{"blanks":1}', '{"blanks":[["3"]]}', '`x > 2` = [1 0 1 0 0 1]; birlerin toplamı 3. sum mantıksal vektörde koşulu sağlayan eleman sayısını verir.', 1, 'Hafta 2, İlişkisel semboller', 1)
  ON CONFLICT(id) DO UPDATE SET topic_id = excluded.topic_id, week = excluded.week, type = excluded.type,
    source = excluded.source, prompt = excluded.prompt, payload = excluded.payload, answer = excluded.answer,
    explanation = excluded.explanation, difficulty = excluded.difficulty, source_ref = excluded.source_ref, active = 1
  WHERE questions.updated_at IS NULL;
INSERT INTO questions (id, topic_id, week, type, source, prompt, payload, answer, explanation, difficulty, source_ref, active)
VALUES ('h2-mantiksal-secim', 'matlab-fonksiyon', 2, 'num', 'derived', '`x = [4 -1 7 0 2 9];` için `x(x > 0 & x < 5)` nedir?', '{"blanks":1}', '{"blanks":[["[4 2]"]]}', 'Hem 0''dan büyük hem 5''ten küçük olanlar: 4 ve 2.', 2, 'Hafta 2, İlişkisel semboller', 1)
  ON CONFLICT(id) DO UPDATE SET topic_id = excluded.topic_id, week = excluded.week, type = excluded.type,
    source = excluded.source, prompt = excluded.prompt, payload = excluded.payload, answer = excluded.answer,
    explanation = excluded.explanation, difficulty = excluded.difficulty, source_ref = excluded.source_ref, active = 1
  WHERE questions.updated_at IS NULL;
INSERT INTO questions (id, topic_id, week, type, source, prompt, payload, answer, explanation, difficulty, source_ref, active)
VALUES ('h2-kisa-devre', 'matlab-fonksiyon', 2, 'mcq', 'derived', '`&&` işlecinin `&` işlecinden farkı nedir?', '{"choices":["Yalnızca skalerlerle çalışır ve sol taraf yanlışsa sağı hesaplamaz","Vektörlerde eleman eleman VE işlemi yapar","VE yerine VEYA işlemi yapar","İki tarafı da her zaman hesaplar ama sonucu tersine çevirir"]}', '{"index":0}', '`&&` kısa devre VE''dir: skalerlerde çalışır, sol taraf 0 ise sonuç zaten 0 olduğundan sağ tarafı hesaplamaz. Eleman eleman VE `&`''dir.', 2, 'Hafta 2, İlişkisel semboller', 1)
  ON CONFLICT(id) DO UPDATE SET topic_id = excluded.topic_id, week = excluded.week, type = excluded.type,
    source = excluded.source, prompt = excluded.prompt, payload = excluded.payload, answer = excluded.answer,
    explanation = excluded.explanation, difficulty = excluded.difficulty, source_ref = excluded.source_ref, active = 1
  WHERE questions.updated_at IS NULL;
INSERT INTO questions (id, topic_id, week, type, source, prompt, payload, answer, explanation, difficulty, source_ref, active)
VALUES ('h2-fonksiyon-cikis', 'matlab-fonksiyon', 2, 'num', 'derived', 'Aşağıdaki fonksiyon için `[p, q] = hesap(3, 5)` çağrısından sonra `q` kaçtır?

```matlab
function [a, b] = hesap(x, y)
    a = x * y;
    b = x - y;
end
```', '{"blanks":1}', '{"blanks":[["-2"]]}', 'Çıkışlar sırayla eşleşir: p = a = 15, q = b = 3 − 5 = −2.', 2, 'Hafta 2, Fonksiyon oluşturma', 1)
  ON CONFLICT(id) DO UPDATE SET topic_id = excluded.topic_id, week = excluded.week, type = excluded.type,
    source = excluded.source, prompt = excluded.prompt, payload = excluded.payload, answer = excluded.answer,
    explanation = excluded.explanation, difficulty = excluded.difficulty, source_ref = excluded.source_ref, active = 1
  WHERE questions.updated_at IS NULL;
INSERT INTO questions (id, topic_id, week, type, source, prompt, payload, answer, explanation, difficulty, source_ref, active)
VALUES ('h2-dosya-adi', 'matlab-fonksiyon', 2, 'fill', 'original', '`function [toplam, fark] = toplamFark(sayi1, sayi2)` ile başlayan fonksiyon kendi dosyasına kaydedilecekse dosyanın adı ne olmalıdır?', '{"blanks":1}', '{"blanks":[["toplamFark.m","toplamfark.m"]]}', 'Ayrı dosyadaki bir fonksiyonun dosya adı fonksiyon adıyla aynı olmalıdır: `toplamFark.m`.', 1, 'Hafta 2, Fonksiyon oluşturma', 1)
  ON CONFLICT(id) DO UPDATE SET topic_id = excluded.topic_id, week = excluded.week, type = excluded.type,
    source = excluded.source, prompt = excluded.prompt, payload = excluded.payload, answer = excluded.answer,
    explanation = excluded.explanation, difficulty = excluded.difficulty, source_ref = excluded.source_ref, active = 1
  WHERE questions.updated_at IS NULL;
INSERT INTO questions (id, topic_id, week, type, source, prompt, payload, answer, explanation, difficulty, source_ref, active)
VALUES ('h2-yerel-degisken', 'matlab-fonksiyon', 2, 'tf', 'derived', 'Bir fonksiyonun içinde oluşturulan değişkenler, fonksiyon bittikten sonra çağıran betiğin çalışma alanında görünür.', '{}', '{"value":false}', 'Yanlış. Fonksiyon değişkenleri yereldir; dışarıya yalnızca çıkış argümanları döner.', 2, 'Hafta 2, Fonksiyon oluşturma', 1)
  ON CONFLICT(id) DO UPDATE SET topic_id = excluded.topic_id, week = excluded.week, type = excluded.type,
    source = excluded.source, prompt = excluded.prompt, payload = excluded.payload, answer = excluded.answer,
    explanation = excluded.explanation, difficulty = excluded.difficulty, source_ref = excluded.source_ref, active = 1
  WHERE questions.updated_at IS NULL;
INSERT INTO questions (id, topic_id, week, type, source, prompt, payload, answer, explanation, difficulty, source_ref, active)
VALUES ('h2-anonim', 'matlab-fonksiyon', 2, 'num', 'derived', '`f = @(t) 3*t + 1;` tanımlıyken `f(2)` kaçtır?', '{"blanks":1}', '{"blanks":[["7"]]}', 'Anonim fonksiyon t = 2 için 3·2 + 1 = 7 verir.', 1, 'Hafta 2, Fonksiyon oluşturma', 1)
  ON CONFLICT(id) DO UPDATE SET topic_id = excluded.topic_id, week = excluded.week, type = excluded.type,
    source = excluded.source, prompt = excluded.prompt, payload = excluded.payload, answer = excluded.answer,
    explanation = excluded.explanation, difficulty = excluded.difficulty, source_ref = excluded.source_ref, active = 1
  WHERE questions.updated_at IS NULL;
INSERT INTO questions (id, topic_id, week, type, source, prompt, payload, answer, explanation, difficulty, source_ref, active)
VALUES ('h2-rand-boyut', 'matlab-fonksiyon', 2, 'num', 'original', '`numel(rand(5, 3))` kaçtır? (numel eleman sayısını verir)', '{"blanks":1}', '{"blanks":[["15"]]}', '`rand(5, 3)` 5×3''lük bir matris üretir: 15 eleman.', 1, 'Hafta 2, Rastgele sayı üretme', 1)
  ON CONFLICT(id) DO UPDATE SET topic_id = excluded.topic_id, week = excluded.week, type = excluded.type,
    source = excluded.source, prompt = excluded.prompt, payload = excluded.payload, answer = excluded.answer,
    explanation = excluded.explanation, difficulty = excluded.difficulty, source_ref = excluded.source_ref, active = 1
  WHERE questions.updated_at IS NULL;
INSERT INTO questions (id, topic_id, week, type, source, prompt, payload, answer, explanation, difficulty, source_ref, active)
VALUES ('h2-randi', 'matlab-fonksiyon', 2, 'mcq', 'original', '`randi(10, 5, 2)` ne üretir?', '{"choices":["1 ile 10 arası tamsayılardan 5×2 matris","0 ile 1 arası sayılardan 10×5 matris","1 ile 5 arası tamsayılardan 10×2 matris","Normal dağılımlı sayılardan 5×2 matris"]}', '{"index":0}', 'İlk argüman en büyük tamsayıdır (en küçüğü 1), sonrakiler boyuttur: 5 satır, 2 sütun.', 1, 'Hafta 2, Rastgele sayı üretme', 1)
  ON CONFLICT(id) DO UPDATE SET topic_id = excluded.topic_id, week = excluded.week, type = excluded.type,
    source = excluded.source, prompt = excluded.prompt, payload = excluded.payload, answer = excluded.answer,
    explanation = excluded.explanation, difficulty = excluded.difficulty, source_ref = excluded.source_ref, active = 1
  WHERE questions.updated_at IS NULL;
INSERT INTO questions (id, topic_id, week, type, source, prompt, payload, answer, explanation, difficulty, source_ref, active)
VALUES ('h2-randperm', 'matlab-fonksiyon', 2, 'tf', 'original', '`randperm(6)` ile üretilen vektörde aynı sayı iki kez bulunabilir.', '{}', '{"value":false}', 'Yanlış. randperm 1''den n''ye kadar sayıların tekrarsız bir karışık dizilişini verir; her sayı tam bir kez bulunur.', 1, 'Hafta 2, Rastgele sayı üretme', 1)
  ON CONFLICT(id) DO UPDATE SET topic_id = excluded.topic_id, week = excluded.week, type = excluded.type,
    source = excluded.source, prompt = excluded.prompt, payload = excluded.payload, answer = excluded.answer,
    explanation = excluded.explanation, difficulty = excluded.difficulty, source_ref = excluded.source_ref, active = 1
  WHERE questions.updated_at IS NULL;
INSERT INTO questions (id, topic_id, week, type, source, prompt, payload, answer, explanation, difficulty, source_ref, active)
VALUES ('h2-rand-aralik', 'matlab-fonksiyon', 2, 'mcq', 'derived', '2 ile 5 arasında düzgün dağılımlı N sayı üreten ifade hangisidir?', '{"choices":["2 + 3*rand(1, N)","5*rand(1, N) + 2","3 + 2*rand(1, N)","rand(2, 5)"]}', '{"index":0}', 'a + (b − a)·rand: 2 + 3·rand, 0–1 aralığını 2–5''e taşır. `5*rand + 2` 2–7, `3 + 2*rand` 3–5 verir; `rand(2, 5)` 2×5''lik bir matristir.', 2, 'Hafta 2, Rastgele sayı üretme', 1)
  ON CONFLICT(id) DO UPDATE SET topic_id = excluded.topic_id, week = excluded.week, type = excluded.type,
    source = excluded.source, prompt = excluded.prompt, payload = excluded.payload, answer = excluded.answer,
    explanation = excluded.explanation, difficulty = excluded.difficulty, source_ref = excluded.source_ref, active = 1
  WHERE questions.updated_at IS NULL;
INSERT INTO questions (id, topic_id, week, type, source, prompt, payload, answer, explanation, difficulty, source_ref, active)
VALUES ('h2-cat-boyut', 'matlab-istatistik', 2, 'num', 'original', '`size(cat(1, ones(2, 3), zeros(4, 3)))` nedir?', '{"blanks":1}', '{"blanks":[["[6 3]"]]}', '`cat(1, ...)` alt alta birleştirir: satırlar toplanır (2 + 4 = 6), sütun 3 kalır.', 2, 'Hafta 2, Dizi birleştirme', 1)
  ON CONFLICT(id) DO UPDATE SET topic_id = excluded.topic_id, week = excluded.week, type = excluded.type,
    source = excluded.source, prompt = excluded.prompt, payload = excluded.payload, answer = excluded.answer,
    explanation = excluded.explanation, difficulty = excluded.difficulty, source_ref = excluded.source_ref, active = 1
  WHERE questions.updated_at IS NULL;
INSERT INTO questions (id, topic_id, week, type, source, prompt, payload, answer, explanation, difficulty, source_ref, active)
VALUES ('h2-vertcat', 'matlab-istatistik', 2, 'fill', 'original', '`[A; B]` ile aynı işi yapan, matrisleri alt alta birleştiren fonksiyonun adı nedir?', '{"blanks":1}', '{"blanks":[["vertcat"]]}', '`vertcat` (vertical concatenation) alt alta, `horzcat` yan yana birleştirir.', 1, 'Hafta 2, Dizi birleştirme', 1)
  ON CONFLICT(id) DO UPDATE SET topic_id = excluded.topic_id, week = excluded.week, type = excluded.type,
    source = excluded.source, prompt = excluded.prompt, payload = excluded.payload, answer = excluded.answer,
    explanation = excluded.explanation, difficulty = excluded.difficulty, source_ref = excluded.source_ref, active = 1
  WHERE questions.updated_at IS NULL;
INSERT INTO questions (id, topic_id, week, type, source, prompt, payload, answer, explanation, difficulty, source_ref, active)
VALUES ('h2-yatay-kural', 'matlab-istatistik', 2, 'mcq', 'derived', '`[A, B]` ile yan yana birleştirme için hangi koşul sağlanmalıdır?', '{"choices":["Satır sayıları aynı olmalı","Sütun sayıları aynı olmalı","İkisi de kare olmalı","Eleman sayıları aynı olmalı"]}', '{"index":0}', 'Yan yana birleştirmede sütunlar eklenir; satır sayıları aynı olmalıdır. Alt alta birleştirmede sütun sayıları aynı olmalıdır.', 1, 'Hafta 2, Dizi birleştirme', 1)
  ON CONFLICT(id) DO UPDATE SET topic_id = excluded.topic_id, week = excluded.week, type = excluded.type,
    source = excluded.source, prompt = excluded.prompt, payload = excluded.payload, answer = excluded.answer,
    explanation = excluded.explanation, difficulty = excluded.difficulty, source_ref = excluded.source_ref, active = 1
  WHERE questions.updated_at IS NULL;
INSERT INTO questions (id, topic_id, week, type, source, prompt, payload, answer, explanation, difficulty, source_ref, active)
VALUES ('h2-mean-boyut', 'matlab-istatistik', 2, 'num', 'original', '`A = [2 4; 6 8; 1 3];` için `mean(A)` nedir?', '{"blanks":1}', '{"blanks":[["[3 5]"]]}', 'Matriste varsayılan boyut 1''dir: her sütunun ortalaması. (2+6+1)/3 = 3, (4+8+3)/3 = 5.', 1, 'Hafta 2, Ortalama, standart sapma, varyans ve medyan', 1)
  ON CONFLICT(id) DO UPDATE SET topic_id = excluded.topic_id, week = excluded.week, type = excluded.type,
    source = excluded.source, prompt = excluded.prompt, payload = excluded.payload, answer = excluded.answer,
    explanation = excluded.explanation, difficulty = excluded.difficulty, source_ref = excluded.source_ref, active = 1
  WHERE questions.updated_at IS NULL;
INSERT INTO questions (id, topic_id, week, type, source, prompt, payload, answer, explanation, difficulty, source_ref, active)
VALUES ('h2-mean-all', 'matlab-istatistik', 2, 'num', 'original', '`A = [2 4; 6 8; 1 3];` için `mean(A, ''all'')` kaçtır?', '{"blanks":1}', '{"blanks":[["4"]]}', 'Bütün elemanların toplamı 24, sayısı 6: 24/6 = 4.', 1, 'Hafta 2, Ortalama, standart sapma, varyans ve medyan', 1)
  ON CONFLICT(id) DO UPDATE SET topic_id = excluded.topic_id, week = excluded.week, type = excluded.type,
    source = excluded.source, prompt = excluded.prompt, payload = excluded.payload, answer = excluded.answer,
    explanation = excluded.explanation, difficulty = excluded.difficulty, source_ref = excluded.source_ref, active = 1
  WHERE questions.updated_at IS NULL;
INSERT INTO questions (id, topic_id, week, type, source, prompt, payload, answer, explanation, difficulty, source_ref, active)
VALUES ('h2-median', 'matlab-istatistik', 2, 'num', 'original', '`median([7 1 4 9])` kaçtır?', '{"blanks":1}', '{"blanks":[["5.5"]]}', 'Sıralı: 1, 4, 7, 9. Eleman sayısı çift; ortadaki iki sayının ortalaması (4 + 7)/2 = 5,5.', 1, 'Hafta 2, Ortalama, standart sapma, varyans ve medyan', 1)
  ON CONFLICT(id) DO UPDATE SET topic_id = excluded.topic_id, week = excluded.week, type = excluded.type,
    source = excluded.source, prompt = excluded.prompt, payload = excluded.payload, answer = excluded.answer,
    explanation = excluded.explanation, difficulty = excluded.difficulty, source_ref = excluded.source_ref, active = 1
  WHERE questions.updated_at IS NULL;
INSERT INTO questions (id, topic_id, week, type, source, prompt, payload, answer, explanation, difficulty, source_ref, active)
VALUES ('h2-std-agirlik', 'matlab-istatistik', 2, 'mcq', 'original', '`std(A, 1, 2)` neyi hesaplar?', '{"choices":["Her satırın N''ye bölünerek bulunan standart sapmasını","Her sütunun N − 1''e bölünerek bulunan standart sapmasını","Bütün elemanların standart sapmasının iki katını","Her satırın N − 1''e bölünerek bulunan standart sapmasını"]}', '{"index":0}', 'std''de ikinci argüman ağırlıktır (1: N''ye böl), üçüncüsü boyuttur (2: satırlar). Sonuç her satır için bir değer olan sütun vektörüdür.', 2, 'Hafta 2, Ortalama, standart sapma, varyans ve medyan', 1)
  ON CONFLICT(id) DO UPDATE SET topic_id = excluded.topic_id, week = excluded.week, type = excluded.type,
    source = excluded.source, prompt = excluded.prompt, payload = excluded.payload, answer = excluded.answer,
    explanation = excluded.explanation, difficulty = excluded.difficulty, source_ref = excluded.source_ref, active = 1
  WHERE questions.updated_at IS NULL;
INSERT INTO questions (id, topic_id, week, type, source, prompt, payload, answer, explanation, difficulty, source_ref, active)
VALUES ('h2-corrcoef', 'matlab-istatistik', 2, 'mcq', 'original', 'İki değişkenin korelasyon katsayısı 1 çıkıyorsa ne söylenir?', '{"choices":["Aralarında tam pozitif doğrusal ilişki var","Aralarında hiçbir doğrusal ilişki yok","Aralarında tam negatif doğrusal ilişki var","İki değişkenin ortalamaları eşit"]}', '{"index":0}', 'Katsayı −1 ile 1 arasındadır: 1 tam pozitif, −1 tam negatif doğrusal ilişki, 0 doğrusal ilişki yok demektir.', 1, 'Hafta 2, Ortalama, standart sapma, varyans ve medyan', 1)
  ON CONFLICT(id) DO UPDATE SET topic_id = excluded.topic_id, week = excluded.week, type = excluded.type,
    source = excluded.source, prompt = excluded.prompt, payload = excluded.payload, answer = excluded.answer,
    explanation = excluded.explanation, difficulty = excluded.difficulty, source_ref = excluded.source_ref, active = 1
  WHERE questions.updated_at IS NULL;
INSERT INTO questions (id, topic_id, week, type, source, prompt, payload, answer, explanation, difficulty, source_ref, active)
VALUES ('h2-corrcoef-hesap', 'matlab-istatistik', 2, 'num', 'derived', '`R = corrcoef([1 2 3 4], [8 6 4 2]);` için `R(1, 2)` kaçtır?', '{"blanks":1}', '{"blanks":[["-1"]]}', 'İkinci veri birincinin tam doğrusal azalan bir fonksiyonu (y = 10 − 2x): katsayı −1.', 2, 'Hafta 2, Ortalama, standart sapma, varyans ve medyan', 1)
  ON CONFLICT(id) DO UPDATE SET topic_id = excluded.topic_id, week = excluded.week, type = excluded.type,
    source = excluded.source, prompt = excluded.prompt, payload = excluded.payload, answer = excluded.answer,
    explanation = excluded.explanation, difficulty = excluded.difficulty, source_ref = excluded.source_ref, active = 1
  WHERE questions.updated_at IS NULL;
INSERT INTO questions (id, topic_id, week, type, source, prompt, payload, answer, explanation, difficulty, source_ref, active)
VALUES ('h3-dizi-okuma', 'ayrik-diziler', 3, 'num', 'derived', '$x(n) = \{3,\ -1,\ \underset{\uparrow}{2},\ 5,\ 4\}$ dizisinde ok n = 0''ı gösteriyor.

x(1) = ____ , x(−2) = ____', '{"blanks":2}', '{"blanks":[["5"],["3"]]}', 'Ok x(0) = 2''yi gösterir. Sağdakiler x(1) = 5, x(2) = 4; soldakiler x(−1) = −1, x(−2) = 3.', 1, 'Hafta 3, Ayrık zamanlı sinyaller', 1)
  ON CONFLICT(id) DO UPDATE SET topic_id = excluded.topic_id, week = excluded.week, type = excluded.type,
    source = excluded.source, prompt = excluded.prompt, payload = excluded.payload, answer = excluded.answer,
    explanation = excluded.explanation, difficulty = excluded.difficulty, source_ref = excluded.source_ref, active = 1
  WHERE questions.updated_at IS NULL;
INSERT INTO questions (id, topic_id, week, type, source, prompt, payload, answer, explanation, difficulty, source_ref, active)
VALUES ('h3-tanimsiz', 'ayrik-diziler', 3, 'tf', 'original', 'Ayrık zamanlı bir x(n) dizisi n = 0,5 gibi tamsayı olmayan anlarda sıfır değerini alır.', '{}', '{"value":false}', 'Yanlış. x(n) yalnızca tamsayı n''lerde tanımlıdır; tamsayı olmayan n''lerde sıfır değil, tanımsızdır.', 1, 'Hafta 3, Ayrık zamanlı sinyaller', 1)
  ON CONFLICT(id) DO UPDATE SET topic_id = excluded.topic_id, week = excluded.week, type = excluded.type,
    source = excluded.source, prompt = excluded.prompt, payload = excluded.payload, answer = excluded.answer,
    explanation = excluded.explanation, difficulty = excluded.difficulty, source_ref = excluded.source_ref, active = 1
  WHERE questions.updated_at IS NULL;
INSERT INTO questions (id, topic_id, week, type, source, prompt, payload, answer, explanation, difficulty, source_ref, active)
VALUES ('h3-durtu-deger', 'ayrik-diziler', 3, 'num', 'derived', '$\displaystyle\sum_{n=-\infty}^{\infty} n^2\,\delta(n-3)$ toplamı kaçtır?', '{"blanks":1}', '{"blanks":[["9"]]}', 'δ(n − 3) yalnızca n = 3''te 1''dir; toplamda yalnızca o terim kalır: 3² = 9.', 2, 'Hafta 3, Farklı dizi çeşitleri', 1)
  ON CONFLICT(id) DO UPDATE SET topic_id = excluded.topic_id, week = excluded.week, type = excluded.type,
    source = excluded.source, prompt = excluded.prompt, payload = excluded.payload, answer = excluded.answer,
    explanation = excluded.explanation, difficulty = excluded.difficulty, source_ref = excluded.source_ref, active = 1
  WHERE questions.updated_at IS NULL;
INSERT INTO questions (id, topic_id, week, type, source, prompt, payload, answer, explanation, difficulty, source_ref, active)
VALUES ('h3-basamak-fark', 'ayrik-diziler', 3, 'fill', 'original', 'u(n) − u(n − 1) farkı hangi diziye eşittir?', '{"blanks":1}', '{"blanks":[["δ(n)","delta(n)","\\delta(n)","birim dürtü"]]}', 'İki basamak n ≥ 1 için birbirini götürür; yalnızca n = 0''da 1 − 0 = 1 kalır. Bu birim dürtüdür: δ(n) = u(n) − u(n − 1).', 1, 'Hafta 3, Farklı dizi çeşitleri', 1)
  ON CONFLICT(id) DO UPDATE SET topic_id = excluded.topic_id, week = excluded.week, type = excluded.type,
    source = excluded.source, prompt = excluded.prompt, payload = excluded.payload, answer = excluded.answer,
    explanation = excluded.explanation, difficulty = excluded.difficulty, source_ref = excluded.source_ref, active = 1
  WHERE questions.updated_at IS NULL;
INSERT INTO questions (id, topic_id, week, type, source, prompt, payload, answer, explanation, difficulty, source_ref, active)
VALUES ('h3-rampa', 'ayrik-diziler', 3, 'num', 'original', 'Birim rampa $u_r(n)$ için $u_r(n - 2)$ dizisinin n = 5''teki değeri kaçtır?', '{"blanks":1}', '{"blanks":[["3"]]}', '$u_r(n - 2) = (n - 2)$, n ≥ 2 için. n = 5''te 3.', 1, 'Hafta 3, Farklı dizi çeşitleri', 1)
  ON CONFLICT(id) DO UPDATE SET topic_id = excluded.topic_id, week = excluded.week, type = excluded.type,
    source = excluded.source, prompt = excluded.prompt, payload = excluded.payload, answer = excluded.answer,
    explanation = excluded.explanation, difficulty = excluded.difficulty, source_ref = excluded.source_ref, active = 1
  WHERE questions.updated_at IS NULL;
INSERT INTO questions (id, topic_id, week, type, source, prompt, payload, answer, explanation, difficulty, source_ref, active)
VALUES ('h3-basamak-toplam', 'ayrik-diziler', 3, 'mcq', 'original', 'Birim basamak birim dürtü cinsinden nasıl yazılır?', '{"choices":["$u(n) = \\sum_{k=-\\infty}^{n} \\delta(k)$","$u(n) = \\delta(n) - \\delta(n-1)$","$u(n) = n\\,\\delta(n)$","$u(n) = \\sum_{k=n}^{\\infty} \\delta(k)$"]}', '{"index":0}', 'n''ye kadar olan dürtülerin toplamı, n ≥ 0 olduğunda δ(0) = 1''i içerir ve 1 olur; n < 0''da hiç dürtü içermez ve 0''dır.', 2, 'Hafta 3, Farklı dizi çeşitleri', 1)
  ON CONFLICT(id) DO UPDATE SET topic_id = excluded.topic_id, week = excluded.week, type = excluded.type,
    source = excluded.source, prompt = excluded.prompt, payload = excluded.payload, answer = excluded.answer,
    explanation = excluded.explanation, difficulty = excluded.difficulty, source_ref = excluded.source_ref, active = 1
  WHERE questions.updated_at IS NULL;
INSERT INTO questions (id, topic_id, week, type, source, prompt, payload, answer, explanation, difficulty, source_ref, active)
VALUES ('h3-ustel-sonum', 'ayrik-diziler', 3, 'mcq', 'original', '$x(n) = (-0{,}7)^n u(n)$ dizisi nasıl davranır?', '{"choices":["İşareti her örnekte değişerek söner","İşareti değişmeden söner","İşareti her örnekte değişerek büyür","Sabit genlikle salınır"]}', '{"index":0}', 'a negatif olduğu için işaret her örnekte değişir; |a| = 0,7 < 1 olduğu için genlik söner.', 1, 'Hafta 3, Üstel ve sinüzoidal sinyaller', 1)
  ON CONFLICT(id) DO UPDATE SET topic_id = excluded.topic_id, week = excluded.week, type = excluded.type,
    source = excluded.source, prompt = excluded.prompt, payload = excluded.payload, answer = excluded.answer,
    explanation = excluded.explanation, difficulty = excluded.difficulty, source_ref = excluded.source_ref, active = 1
  WHERE questions.updated_at IS NULL;
INSERT INTO questions (id, topic_id, week, type, source, prompt, payload, answer, explanation, difficulty, source_ref, active)
VALUES ('h3-karmasik-genlik', 'ayrik-diziler', 3, 'num', 'derived', '$x(n) = e^{(-0{,}1 + j\pi/4)n}$ için $|x(10)|$ kaçtır?', '{"blanks":1}', '{"blanks":[["0.3679±0.002"]]}', 'Karmaşık üstelin genliği $e^{\sigma n}$''dir; sanal kısım genliği değiştirmez. $e^{-0{,}1 \cdot 10} = e^{-1} \approx 0{,}368$.', 2, 'Hafta 3, Üstel ve sinüzoidal sinyaller', 1)
  ON CONFLICT(id) DO UPDATE SET topic_id = excluded.topic_id, week = excluded.week, type = excluded.type,
    source = excluded.source, prompt = excluded.prompt, payload = excluded.payload, answer = excluded.answer,
    explanation = excluded.explanation, difficulty = excluded.difficulty, source_ref = excluded.source_ref, active = 1
  WHERE questions.updated_at IS NULL;
INSERT INTO questions (id, topic_id, week, type, source, prompt, payload, answer, explanation, difficulty, source_ref, active)
VALUES ('h3-periyot', 'ayrik-diziler', 3, 'num', 'derived', '$x(n) = \cos(\pi n / 6)$ dizisinin temel periyodu kaçtır?', '{"blanks":1}', '{"blanks":[["12"]]}', '$N = 2\pi k / \omega_0 = 2\pi k / (\pi/6) = 12k$; k = 1 ile N = 12.', 1, 'Hafta 3, Sinüzoidal sinyaller', 1)
  ON CONFLICT(id) DO UPDATE SET topic_id = excluded.topic_id, week = excluded.week, type = excluded.type,
    source = excluded.source, prompt = excluded.prompt, payload = excluded.payload, answer = excluded.answer,
    explanation = excluded.explanation, difficulty = excluded.difficulty, source_ref = excluded.source_ref, active = 1
  WHERE questions.updated_at IS NULL;
INSERT INTO questions (id, topic_id, week, type, source, prompt, payload, answer, explanation, difficulty, source_ref, active)
VALUES ('h3-periyot-toplam', 'ayrik-diziler', 3, 'num', 'original', '$x(n) = \cos(0{,}25\pi n) + \sin(\pi n / 3)$ dizisinin temel periyodu kaçtır?', '{"blanks":1}', '{"blanks":[["24"]]}', '$N_1 = 2\pi / 0{,}25\pi = 8$, $N_2 = 2\pi / (\pi/3) = 6$. Toplamın periyodu ekok(8, 6) = 24.', 2, 'Hafta 3, Sinüzoidal sinyaller', 1)
  ON CONFLICT(id) DO UPDATE SET topic_id = excluded.topic_id, week = excluded.week, type = excluded.type,
    source = excluded.source, prompt = excluded.prompt, payload = excluded.payload, answer = excluded.answer,
    explanation = excluded.explanation, difficulty = excluded.difficulty, source_ref = excluded.source_ref, active = 1
  WHERE questions.updated_at IS NULL;
INSERT INTO questions (id, topic_id, week, type, source, prompt, payload, answer, explanation, difficulty, source_ref, active)
VALUES ('h3-periyodik-degil', 'ayrik-diziler', 3, 'tf', 'derived', '$x(n) = \cos(0{,}3n)$ periyodik bir dizidir.', '{}', '{"value":false}', 'Yanlış. $\omega_0 / 2\pi = 0{,}3/2\pi$ rasyonel değildir; $0{,}3N = 2\pi k$ sağlayan tamsayılar yoktur. Ayrık sinüs ancak $\omega_0/2\pi$ rasyonelse periyodiktir.', 2, 'Hafta 3, Sinüzoidal sinyaller', 1)
  ON CONFLICT(id) DO UPDATE SET topic_id = excluded.topic_id, week = excluded.week, type = excluded.type,
    source = excluded.source, prompt = excluded.prompt, payload = excluded.payload, answer = excluded.answer,
    explanation = excluded.explanation, difficulty = excluded.difficulty, source_ref = excluded.source_ref, active = 1
  WHERE questions.updated_at IS NULL;
INSERT INTO questions (id, topic_id, week, type, source, prompt, payload, answer, explanation, difficulty, source_ref, active)
VALUES ('h3-periyot-k', 'ayrik-diziler', 3, 'num', 'derived', '$x(n) = \cos(0{,}3\pi n)$ dizisinin temel periyodu kaçtır?', '{"blanks":1}', '{"blanks":[["20"]]}', '$N = 2\pi k / 0{,}3\pi = 20k/3$. Tamsayı yapan en küçük k = 3: N = 20.', 3, 'Hafta 3, Sinüzoidal sinyaller', 1)
  ON CONFLICT(id) DO UPDATE SET topic_id = excluded.topic_id, week = excluded.week, type = excluded.type,
    source = excluded.source, prompt = excluded.prompt, payload = excluded.payload, answer = excluded.answer,
    explanation = excluded.explanation, difficulty = excluded.difficulty, source_ref = excluded.source_ref, active = 1
  WHERE questions.updated_at IS NULL;
INSERT INTO questions (id, topic_id, week, type, source, prompt, payload, answer, explanation, difficulty, source_ref, active)
VALUES ('h3-cift-kisim', 'sinyal-islemleri', 3, 'num', 'original', 'x(0) = 2, x(1) = 4, x(2) = −2 ve başka her yerde x(n) = 0.

$x_e(1)$ = ____ , $x_o(-1)$ = ____', '{"blanks":2}', '{"blanks":[["2"],["-2"]]}', '$x_e(1) = [x(1) + x(-1)]/2 = (4 + 0)/2 = 2$. $x_o(-1) = [x(-1) - x(1)]/2 = (0 - 4)/2 = -2$.', 2, 'Hafta 3, Simetrik diziler', 1)
  ON CONFLICT(id) DO UPDATE SET topic_id = excluded.topic_id, week = excluded.week, type = excluded.type,
    source = excluded.source, prompt = excluded.prompt, payload = excluded.payload, answer = excluded.answer,
    explanation = excluded.explanation, difficulty = excluded.difficulty, source_ref = excluded.source_ref, active = 1
  WHERE questions.updated_at IS NULL;
INSERT INTO questions (id, topic_id, week, type, source, prompt, payload, answer, explanation, difficulty, source_ref, active)
VALUES ('h3-tek-sifir', 'sinyal-islemleri', 3, 'tf', 'original', 'Gerçek değerli tek bir dizide x(0) her zaman sıfırdır.', '{}', '{"value":true}', 'Doğru. Tek dizide x(n) = −x(−n); n = 0''da x(0) = −x(0), bu yalnızca x(0) = 0 ile sağlanır.', 1, 'Hafta 3, Simetrik diziler', 1)
  ON CONFLICT(id) DO UPDATE SET topic_id = excluded.topic_id, week = excluded.week, type = excluded.type,
    source = excluded.source, prompt = excluded.prompt, payload = excluded.payload, answer = excluded.answer,
    explanation = excluded.explanation, difficulty = excluded.difficulty, source_ref = excluded.source_ref, active = 1
  WHERE questions.updated_at IS NULL;
INSERT INTO questions (id, topic_id, week, type, source, prompt, payload, answer, explanation, difficulty, source_ref, active)
VALUES ('h3-cift-ornek', 'sinyal-islemleri', 3, 'mcq', 'derived', 'Aşağıdaki dizilerden hangisi çifttir?', '{"choices":["$\\cos(0{,}2\\pi n)$","$\\sin(0{,}2\\pi n)$","$u(n)$","$\\delta(n - 1)$"]}', '{"index":0}', 'cos(−θ) = cos(θ) olduğu için cos(ω₀n) çifttir. sin tektir; u(n) ve δ(n − 1) n = 0''a göre simetrik değildir.', 1, 'Hafta 3, Simetrik diziler', 1)
  ON CONFLICT(id) DO UPDATE SET topic_id = excluded.topic_id, week = excluded.week, type = excluded.type,
    source = excluded.source, prompt = excluded.prompt, payload = excluded.payload, answer = excluded.answer,
    explanation = excluded.explanation, difficulty = excluded.difficulty, source_ref = excluded.source_ref, active = 1
  WHERE questions.updated_at IS NULL;
INSERT INTO questions (id, topic_id, week, type, source, prompt, payload, answer, explanation, difficulty, source_ref, active)
VALUES ('h3-kaydirma', 'sinyal-islemleri', 3, 'mcq', 'original', 'y(n) = x(n + 3) dizisi x(n)''e göre nasıl kaymıştır?', '{"choices":["3 örnek sola","3 örnek sağa","n = 0 etrafında aynalanmış","3 kat seyreltilmiş"]}', '{"index":0}', 'x(n − n₀)''da n₀ = −3: dizi 3 örnek sola kayar, yani ilerler. x''in n = 0''daki değeri y''de n = −3''te görünür.', 1, 'Hafta 3, Sinyal manipülasyonları', 1)
  ON CONFLICT(id) DO UPDATE SET topic_id = excluded.topic_id, week = excluded.week, type = excluded.type,
    source = excluded.source, prompt = excluded.prompt, payload = excluded.payload, answer = excluded.answer,
    explanation = excluded.explanation, difficulty = excluded.difficulty, source_ref = excluded.source_ref, active = 1
  WHERE questions.updated_at IS NULL;
INSERT INTO questions (id, topic_id, week, type, source, prompt, payload, answer, explanation, difficulty, source_ref, active)
VALUES ('h3-ters-kaydir', 'sinyal-islemleri', 3, 'num', 'original', 'x(n), n = 0, 1, 2, 3 için 1, 2, 3, 4 değerlerini alıyor; başka yerde 0. y(n) = x(3 − n) olsun.

y(0) = ____ , y(2) = ____', '{"blanks":2}', '{"blanks":[["4"],["2"]]}', 'y(0) = x(3) = 4; y(2) = x(1) = 2. Her n için parantezin içini hesapla.', 2, 'Hafta 3, Sinyal manipülasyonları', 1)
  ON CONFLICT(id) DO UPDATE SET topic_id = excluded.topic_id, week = excluded.week, type = excluded.type,
    source = excluded.source, prompt = excluded.prompt, payload = excluded.payload, answer = excluded.answer,
    explanation = excluded.explanation, difficulty = excluded.difficulty, source_ref = excluded.source_ref, active = 1
  WHERE questions.updated_at IS NULL;
INSERT INTO questions (id, topic_id, week, type, source, prompt, payload, answer, explanation, difficulty, source_ref, active)
VALUES ('h3-seyreltme', 'sinyal-islemleri', 3, 'num', 'original', 'x(n) = n (n = 0..9 için, başka yerde 0) ve y(n) = x(2n). y(3) kaçtır?', '{"blanks":1}', '{"blanks":[["6"]]}', 'y(3) = x(2·3) = x(6) = 6. Seyreltmede her ikinci örnek alınır.', 2, 'Hafta 3, Sinyal manipülasyonları', 1)
  ON CONFLICT(id) DO UPDATE SET topic_id = excluded.topic_id, week = excluded.week, type = excluded.type,
    source = excluded.source, prompt = excluded.prompt, payload = excluded.payload, answer = excluded.answer,
    explanation = excluded.explanation, difficulty = excluded.difficulty, source_ref = excluded.source_ref, active = 1
  WHERE questions.updated_at IS NULL;
INSERT INTO questions (id, topic_id, week, type, source, prompt, payload, answer, explanation, difficulty, source_ref, active)
VALUES ('h3-ara-deger', 'sinyal-islemleri', 3, 'num', 'original', 'n = 0, 1, 2''de 1, 2, 3 olan bir dizi 2 kat ara değer eklemeyle (up-sampling, $y(n) = x(n/2)$ n çiftken, değilse 0) genişletiliyor. y(0)''dan y(4)''e kadarki değerleri yaz.', '{"blanks":1}', '{"blanks":[["[1 0 2 0 3]"]]}', 'Çift n''lerde y(n) = x(n/2): y(0) = 1, y(2) = 2, y(4) = 3; tek n''lerde 0.', 2, 'Hafta 3, Sinyal manipülasyonları', 1)
  ON CONFLICT(id) DO UPDATE SET topic_id = excluded.topic_id, week = excluded.week, type = excluded.type,
    source = excluded.source, prompt = excluded.prompt, payload = excluded.payload, answer = excluded.answer,
    explanation = excluded.explanation, difficulty = excluded.difficulty, source_ref = excluded.source_ref, active = 1
  WHERE questions.updated_at IS NULL;
INSERT INTO questions (id, topic_id, week, type, source, prompt, payload, answer, explanation, difficulty, source_ref, active)
VALUES ('h3-sira', 'sinyal-islemleri', 3, 'tf', 'original', 'Bir diziyi önce 2 örnek geciktirip sonra ters çevirmek, önce ters çevirip sonra 2 örnek geciktirmekle aynı sonucu verir.', '{}', '{"value":false}', 'Yanlış. İlki x(−n − 2), ikincisi x(−(n − 2)) = x(−n + 2) verir; dizi n = 0''ın farklı taraflarına düşer.', 2, 'Hafta 3, Sinyal manipülasyonları', 1)
  ON CONFLICT(id) DO UPDATE SET topic_id = excluded.topic_id, week = excluded.week, type = excluded.type,
    source = excluded.source, prompt = excluded.prompt, payload = excluded.payload, answer = excluded.answer,
    explanation = excluded.explanation, difficulty = excluded.difficulty, source_ref = excluded.source_ref, active = 1
  WHERE questions.updated_at IS NULL;
INSERT INTO questions (id, topic_id, week, type, source, prompt, payload, answer, explanation, difficulty, source_ref, active)
VALUES ('h3-enerji', 'sinyal-islemleri', 3, 'num', 'original', 'Yalnızca n = 0, 1, 2''de 1, −2, 2 değerlerini alan dizinin enerjisi kaçtır?', '{"blanks":1}', '{"blanks":[["9"]]}', 'E = 1² + (−2)² + 2² = 1 + 4 + 4 = 9.', 1, 'Hafta 3, Sinyal enerjisi ve gücü', 1)
  ON CONFLICT(id) DO UPDATE SET topic_id = excluded.topic_id, week = excluded.week, type = excluded.type,
    source = excluded.source, prompt = excluded.prompt, payload = excluded.payload, answer = excluded.answer,
    explanation = excluded.explanation, difficulty = excluded.difficulty, source_ref = excluded.source_ref, active = 1
  WHERE questions.updated_at IS NULL;
INSERT INTO questions (id, topic_id, week, type, source, prompt, payload, answer, explanation, difficulty, source_ref, active)
VALUES ('h3-enerji-ustel', 'sinyal-islemleri', 3, 'num', 'derived', '$x(n) = (0{,}8)^n u(n)$ dizisinin enerjisi kaçtır?', '{"blanks":1}', '{"blanks":[["2.778±0.01","25/9"]]}', '$E = \sum (0{,}64)^n = 1/(1 - 0{,}64) = 1/0{,}36 \approx 2{,}78$.', 2, 'Hafta 3, Sinyal enerjisi ve gücü', 1)
  ON CONFLICT(id) DO UPDATE SET topic_id = excluded.topic_id, week = excluded.week, type = excluded.type,
    source = excluded.source, prompt = excluded.prompt, payload = excluded.payload, answer = excluded.answer,
    explanation = excluded.explanation, difficulty = excluded.difficulty, source_ref = excluded.source_ref, active = 1
  WHERE questions.updated_at IS NULL;
INSERT INTO questions (id, topic_id, week, type, source, prompt, payload, answer, explanation, difficulty, source_ref, active)
VALUES ('h3-guc', 'sinyal-islemleri', 3, 'num', 'original', 'Periyodu 4 olan bir dizinin bir periyottaki değerleri 1, 2, 1, 0. Dizinin gücü kaçtır?', '{"blanks":1}', '{"blanks":[["1.5"]]}', 'P = (1 + 4 + 1 + 0)/4 = 6/4 = 1,5.', 2, 'Hafta 3, Sinyal enerjisi ve gücü', 1)
  ON CONFLICT(id) DO UPDATE SET topic_id = excluded.topic_id, week = excluded.week, type = excluded.type,
    source = excluded.source, prompt = excluded.prompt, payload = excluded.payload, answer = excluded.answer,
    explanation = excluded.explanation, difficulty = excluded.difficulty, source_ref = excluded.source_ref, active = 1
  WHERE questions.updated_at IS NULL;
INSERT INTO questions (id, topic_id, week, type, source, prompt, payload, answer, explanation, difficulty, source_ref, active)
VALUES ('h3-guc-basamak', 'sinyal-islemleri', 3, 'mcq', 'derived', 'Birim basamak u(n) için hangisi doğrudur?', '{"choices":["Güç sinyalidir","Enerji sinyalidir","Hem enerji hem güç sinyalidir","Ne enerji ne güç sinyalidir"]}', '{"index":0}', 'u(n)''nin enerjisi sonsuzdur (sonsuz tane 1''in karesi), ortalama gücü ise 1/2''dir: güç sinyalidir.', 2, 'Hafta 3, Sinyal enerjisi ve gücü', 1)
  ON CONFLICT(id) DO UPDATE SET topic_id = excluded.topic_id, week = excluded.week, type = excluded.type,
    source = excluded.source, prompt = excluded.prompt, payload = excluded.payload, answer = excluded.answer,
    explanation = excluded.explanation, difficulty = excluded.difficulty, source_ref = excluded.source_ref, active = 1
  WHERE questions.updated_at IS NULL;
INSERT INTO questions (id, topic_id, week, type, source, prompt, payload, answer, explanation, difficulty, source_ref, active)
VALUES ('h3-durtu-toplam', 'sinyal-islemleri', 3, 'num', 'original', 'x(n) = 3δ(n + 1) − δ(n) + 2δ(n − 2) için

x(−1) = ____ , x(2) = ____', '{"blanks":2}', '{"blanks":[["3"],["2"]]}', 'Her dürtü kendi konumunda katsayısını verir: δ(n + 1) n = −1''de, δ(n − 2) n = 2''de.', 1, 'Hafta 3, Sinyal ayrıştırma', 1)
  ON CONFLICT(id) DO UPDATE SET topic_id = excluded.topic_id, week = excluded.week, type = excluded.type,
    source = excluded.source, prompt = excluded.prompt, payload = excluded.payload, answer = excluded.answer,
    explanation = excluded.explanation, difficulty = excluded.difficulty, source_ref = excluded.source_ref, active = 1
  WHERE questions.updated_at IS NULL;
INSERT INTO questions (id, topic_id, week, type, source, prompt, payload, answer, explanation, difficulty, source_ref, active)
VALUES ('h3-eleme', 'sinyal-islemleri', 3, 'num', 'derived', '$x(n) = n^2 + 1$ olsun. $x(n)\,\delta(n - 2)$ dizisinin n = 2''deki değeri kaçtır?', '{"blanks":1}', '{"blanks":[["5"]]}', 'Eleme özelliği: $x(n)\,\delta(n-2) = x(2)\,\delta(n-2)$. n = 2''de değer x(2) = 5; diğer her yerde 0.', 2, 'Hafta 3, Sinyal ayrıştırma', 1)
  ON CONFLICT(id) DO UPDATE SET topic_id = excluded.topic_id, week = excluded.week, type = excluded.type,
    source = excluded.source, prompt = excluded.prompt, payload = excluded.payload, answer = excluded.answer,
    explanation = excluded.explanation, difficulty = excluded.difficulty, source_ref = excluded.source_ref, active = 1
  WHERE questions.updated_at IS NULL;
INSERT INTO questions (id, topic_id, week, type, source, prompt, payload, answer, explanation, difficulty, source_ref, active)
VALUES ('h3-dogrusal', 'ayrik-sistemler', 3, 'mcq', 'original', 'Aşağıdaki sistemlerden hangisi doğrusaldır?', '{"choices":["y(n) = 2x(n − 1)","y(n) = x(n) + 1","y(n) = x²(n)","y(n) = |x(n)|"]}', '{"index":0}', '2x(n − 1) süperpozisyonu sağlar. Sabit eklemek homojenliği, kare ve mutlak değer toplanabilirliği bozar.', 1, 'Hafta 3, Doğrusal sistemler', 1)
  ON CONFLICT(id) DO UPDATE SET topic_id = excluded.topic_id, week = excluded.week, type = excluded.type,
    source = excluded.source, prompt = excluded.prompt, payload = excluded.payload, answer = excluded.answer,
    explanation = excluded.explanation, difficulty = excluded.difficulty, source_ref = excluded.source_ref, active = 1
  WHERE questions.updated_at IS NULL;
INSERT INTO questions (id, topic_id, week, type, source, prompt, payload, answer, explanation, difficulty, source_ref, active)
VALUES ('h3-sifir-giris', 'ayrik-sistemler', 3, 'tf', 'derived', 'Sıfır girişe sıfırdan farklı bir çıkış veren bir sistem doğrusal olamaz.', '{}', '{"value":true}', 'Doğru. Homojenlikten T[0·x] = 0·T[x] = 0 olmalıdır. y(n) = 2x(n) + 5 gibi sistemler bu yüzden doğrusal değildir.', 2, 'Hafta 3, Doğrusal sistemler', 1)
  ON CONFLICT(id) DO UPDATE SET topic_id = excluded.topic_id, week = excluded.week, type = excluded.type,
    source = excluded.source, prompt = excluded.prompt, payload = excluded.payload, answer = excluded.answer,
    explanation = excluded.explanation, difficulty = excluded.difficulty, source_ref = excluded.source_ref, active = 1
  WHERE questions.updated_at IS NULL;
INSERT INTO questions (id, topic_id, week, type, source, prompt, payload, answer, explanation, difficulty, source_ref, active)
VALUES ('h3-superpozisyon', 'ayrik-sistemler', 3, 'fill', 'original', 'Hem toplanabilir hem homojen olan bir sistem ____ ilkesini sağlar ve doğrusaldır.', '{"blanks":1}', '{"blanks":[["süperpozisyon","superpozisyon"]]}', 'Süperpozisyon: ağırlıklı girişlerin toplamının yanıtı, yanıtların aynı ağırlıklarla toplamıdır.', 1, 'Hafta 3, Doğrusal sistemler', 1)
  ON CONFLICT(id) DO UPDATE SET topic_id = excluded.topic_id, week = excluded.week, type = excluded.type,
    source = excluded.source, prompt = excluded.prompt, payload = excluded.payload, answer = excluded.answer,
    explanation = excluded.explanation, difficulty = excluded.difficulty, source_ref = excluded.source_ref, active = 1
  WHERE questions.updated_at IS NULL;
INSERT INTO questions (id, topic_id, week, type, source, prompt, payload, answer, explanation, difficulty, source_ref, active)
VALUES ('h3-nedensel', 'ayrik-sistemler', 3, 'mcq', 'original', 'Aşağıdaki sistemlerden hangisi nedenseldir?', '{"choices":["y(n) = x(n) − x(n − 2)","y(n) = x(n + 1)","y(n) = x(−n)","y(n) = x(2n)"]}', '{"index":0}', 'Yalnızca şimdiki ve geçmiş örnekleri kullanır. x(n + 1) gelecektir; x(−n) negatif n''lerde, x(2n) pozitif n''lerde gelecekteki örnekleri kullanır.', 1, 'Hafta 3, Ayrık zamanlı sistem özellikleri', 1)
  ON CONFLICT(id) DO UPDATE SET topic_id = excluded.topic_id, week = excluded.week, type = excluded.type,
    source = excluded.source, prompt = excluded.prompt, payload = excluded.payload, answer = excluded.answer,
    explanation = excluded.explanation, difficulty = excluded.difficulty, source_ref = excluded.source_ref, active = 1
  WHERE questions.updated_at IS NULL;
INSERT INTO questions (id, topic_id, week, type, source, prompt, payload, answer, explanation, difficulty, source_ref, active)
VALUES ('h3-zamanla-degisen', 'ayrik-sistemler', 3, 'mcq', 'original', 'Aşağıdaki sistemlerden hangisi zamanla değişir?', '{"choices":["y(n) = n·x(n)","y(n) = x(n − 1)","y(n) = 3x(n)","y(n) = x(n) + x(n − 1)"]}', '{"index":0}', 'n·x(n)''de katsayı zamana bağlıdır: x(n − n₀) girişi n·x(n − n₀) verir ama y(n − n₀) = (n − n₀)·x(n − n₀)''dır.', 2, 'Hafta 3, Ayrık zamanlı sistem özellikleri', 1)
  ON CONFLICT(id) DO UPDATE SET topic_id = excluded.topic_id, week = excluded.week, type = excluded.type,
    source = excluded.source, prompt = excluded.prompt, payload = excluded.payload, answer = excluded.answer,
    explanation = excluded.explanation, difficulty = excluded.difficulty, source_ref = excluded.source_ref, active = 1
  WHERE questions.updated_at IS NULL;
INSERT INTO questions (id, topic_id, week, type, source, prompt, payload, answer, explanation, difficulty, source_ref, active)
VALUES ('h3-kararlilik', 'ayrik-sistemler', 3, 'mcq', 'original', 'Aşağıdaki sistemlerden hangisi BIBO anlamında kararsızdır?', '{"choices":["$y(n) = \\sum_{k=-\\infty}^{n} x(k)$","y(n) = 0,5x(n − 1)","y(n) = x²(n)","y(n) = cos(x(n))"]}', '{"index":0}', 'Biriktirici, sınırlı u(n) girişine sınırsız büyüyen (n + 1)u(n) ile yanıt verir. Diğerleri sınırlı girişe sınırlı çıkış verir.', 2, 'Hafta 3, Ayrık zamanlı sistem özellikleri', 1)
  ON CONFLICT(id) DO UPDATE SET topic_id = excluded.topic_id, week = excluded.week, type = excluded.type,
    source = excluded.source, prompt = excluded.prompt, payload = excluded.payload, answer = excluded.answer,
    explanation = excluded.explanation, difficulty = excluded.difficulty, source_ref = excluded.source_ref, active = 1
  WHERE questions.updated_at IS NULL;
INSERT INTO questions (id, topic_id, week, type, source, prompt, payload, answer, explanation, difficulty, source_ref, active)
VALUES ('h3-tersinir', 'ayrik-sistemler', 3, 'tf', 'original', 'y(n) = x²(n) sistemi tersinirdir.', '{}', '{"value":false}', 'Yanlış. x(n) ve −x(n) aynı çıkışı verir; çıkıştan giriş tek türlü bulunamaz.', 1, 'Hafta 3, Ayrık zamanlı sistem özellikleri', 1)
  ON CONFLICT(id) DO UPDATE SET topic_id = excluded.topic_id, week = excluded.week, type = excluded.type,
    source = excluded.source, prompt = excluded.prompt, payload = excluded.payload, answer = excluded.answer,
    explanation = excluded.explanation, difficulty = excluded.difficulty, source_ref = excluded.source_ref, active = 1
  WHERE questions.updated_at IS NULL;
INSERT INTO questions (id, topic_id, week, type, source, prompt, payload, answer, explanation, difficulty, source_ref, active)
VALUES ('h3-hafizasiz', 'ayrik-sistemler', 3, 'fill', 'original', 'Çıkışı yalnızca girişin o andaki değerine bağlı olan sisteme hafızasız ya da ____ sistem denir.', '{"blanks":1}', '{"blanks":[["statik"]]}', 'Hafızasız (statik) sistemde y(n) yalnızca x(n)''e bağlıdır. Başka anlara bağlıysa sistem dinamiktir.', 1, 'Hafta 3, Ayrık zamanlı sistem özellikleri', 1)
  ON CONFLICT(id) DO UPDATE SET topic_id = excluded.topic_id, week = excluded.week, type = excluded.type,
    source = excluded.source, prompt = excluded.prompt, payload = excluded.payload, answer = excluded.answer,
    explanation = excluded.explanation, difficulty = excluded.difficulty, source_ref = excluded.source_ref, active = 1
  WHERE questions.updated_at IS NULL;
INSERT INTO questions (id, topic_id, week, type, source, prompt, payload, answer, explanation, difficulty, source_ref, active)
VALUES ('h3-bibo', 'ayrik-sistemler', 3, 'fill', 'original', '"Sınırlı giriş, sınırlı çıkış" kararlılığının İngilizce kısaltması nedir?', '{"blanks":1}', '{"blanks":[["BIBO"]]}', 'BIBO: bounded input, bounded output.', 1, 'Hafta 3, Ayrık zamanlı sistem özellikleri', 1)
  ON CONFLICT(id) DO UPDATE SET topic_id = excluded.topic_id, week = excluded.week, type = excluded.type,
    source = excluded.source, prompt = excluded.prompt, payload = excluded.payload, answer = excluded.answer,
    explanation = excluded.explanation, difficulty = excluded.difficulty, source_ref = excluded.source_ref, active = 1
  WHERE questions.updated_at IS NULL;
INSERT INTO questions (id, topic_id, week, type, source, prompt, payload, answer, explanation, difficulty, source_ref, active)
VALUES ('h3-lti-durtu', 'ayrik-sistemler', 3, 'num', 'derived', 'y(n) = x(n) − 2x(n − 1) + x(n − 2) sisteminin dürtü yanıtını n = 0''dan başlayarak yaz.', '{"blanks":1}', '{"blanks":[["[1 -2 1]"]]}', 'x(n) = δ(n) koy: h(n) = δ(n) − 2δ(n − 1) + δ(n − 2). Değerler n = 0, 1, 2''de 1, −2, 1.', 2, 'Hafta 3, LTI sistemler', 1)
  ON CONFLICT(id) DO UPDATE SET topic_id = excluded.topic_id, week = excluded.week, type = excluded.type,
    source = excluded.source, prompt = excluded.prompt, payload = excluded.payload, answer = excluded.answer,
    explanation = excluded.explanation, difficulty = excluded.difficulty, source_ref = excluded.source_ref, active = 1
  WHERE questions.updated_at IS NULL;
INSERT INTO questions (id, topic_id, week, type, source, prompt, payload, answer, explanation, difficulty, source_ref, active)
VALUES ('h3-kaskat', 'ayrik-sistemler', 3, 'tf', 'original', 'Art arda bağlanmış iki LTI sistemin sırası değiştirilirse toplam çıkış değişmez.', '{}', '{"value":true}', 'Doğru. LTI sistemlerin değişme özelliği: kaskat bağlantıda sıra önemli değildir.', 1, 'Hafta 3, LTI sistemler', 1)
  ON CONFLICT(id) DO UPDATE SET topic_id = excluded.topic_id, week = excluded.week, type = excluded.type,
    source = excluded.source, prompt = excluded.prompt, payload = excluded.payload, answer = excluded.answer,
    explanation = excluded.explanation, difficulty = excluded.difficulty, source_ref = excluded.source_ref, active = 1
  WHERE questions.updated_at IS NULL;
INSERT INTO questions (id, topic_id, week, type, source, prompt, payload, answer, explanation, difficulty, source_ref, active)
VALUES ('h3-lti-tanim', 'ayrik-sistemler', 3, 'fill', 'original', 'Bir LTI sistemin birim dürtüye, δ(n)''ye verdiği yanıta ____ yanıtı denir ve h(n) ile gösterilir.', '{"blanks":1}', '{"blanks":[["dürtü","durtu"]]}', 'Dürtü yanıtı h(n), LTI sistemi tamamen tanımlar; her girişin yanıtı konvolüsyonla bulunur.', 1, 'Hafta 3, LTI sistemler', 1)
  ON CONFLICT(id) DO UPDATE SET topic_id = excluded.topic_id, week = excluded.week, type = excluded.type,
    source = excluded.source, prompt = excluded.prompt, payload = excluded.payload, answer = excluded.answer,
    explanation = excluded.explanation, difficulty = excluded.difficulty, source_ref = excluded.source_ref, active = 1
  WHERE questions.updated_at IS NULL;
INSERT INTO questions (id, topic_id, week, type, source, prompt, payload, answer, explanation, difficulty, source_ref, active)
VALUES ('h4-tanim', 'konvolusyon-temel', 4, 'mcq', 'original', 'Dürtü yanıtı h(n) olan LTI bir sistemin x(n) girişine çıkışı hangisidir?', '{"choices":["$\\sum_k x(k)\\,h(n-k)$","$\\sum_k x(k)\\,h(n+k)$","$x(n)\\,h(n)$","$\\sum_k x(k)\\,h(k)$"]}', '{"index":0}', 'Konvolüsyon toplamı: her giriş örneği x(k), n − k adım sonraki dürtü yanıtı değeriyle çarpılır ve toplanır. İkinci şık korelasyondur, üçüncüsü örnek örnek çarpım, dördüncüsü n''ye bağlı bile değildir.', 1, 'Hafta 4, Konvolüsyon', 1)
  ON CONFLICT(id) DO UPDATE SET topic_id = excluded.topic_id, week = excluded.week, type = excluded.type,
    source = excluded.source, prompt = excluded.prompt, payload = excluded.payload, answer = excluded.answer,
    explanation = excluded.explanation, difficulty = excluded.difficulty, source_ref = excluded.source_ref, active = 1
  WHERE questions.updated_at IS NULL;
INSERT INTO questions (id, topic_id, week, type, source, prompt, payload, answer, explanation, difficulty, source_ref, active)
VALUES ('h4-durtu-birim', 'konvolusyon-temel', 4, 'fill', 'derived', 'Bir dizinin birim dürtüyle konvolüsyonu nedir? x(n) * δ(n) = ____', '{"blanks":1}', '{"blanks":[["x(n)","x"]]}', 'Toplamda yalnızca k = n terimi kalır: x(n) * δ(n) = x(n). Dürtü konvolüsyonun birim elemanıdır.', 1, 'Hafta 4, Konvolüsyon', 1)
  ON CONFLICT(id) DO UPDATE SET topic_id = excluded.topic_id, week = excluded.week, type = excluded.type,
    source = excluded.source, prompt = excluded.prompt, payload = excluded.payload, answer = excluded.answer,
    explanation = excluded.explanation, difficulty = excluded.difficulty, source_ref = excluded.source_ref, active = 1
  WHERE questions.updated_at IS NULL;
INSERT INTO questions (id, topic_id, week, type, source, prompt, payload, answer, explanation, difficulty, source_ref, active)
VALUES ('h4-durtu-kaydir', 'konvolusyon-temel', 4, 'num', 'derived', 'x(n) yalnızca n = 1''de 4 değerini alıyor. y(n) = x(n) * δ(n − 3) hangi n''de 4''tür?', '{"blanks":1}', '{"blanks":[["4"]]}', 'Kaydırılmış dürtüyle konvolüsyon diziyi kaydırır: y(n) = x(n − 3). Değer n − 3 = 1, yani n = 4''te görünür.', 1, 'Hafta 4, Konvolüsyon', 1)
  ON CONFLICT(id) DO UPDATE SET topic_id = excluded.topic_id, week = excluded.week, type = excluded.type,
    source = excluded.source, prompt = excluded.prompt, payload = excluded.payload, answer = excluded.answer,
    explanation = excluded.explanation, difficulty = excluded.difficulty, source_ref = excluded.source_ref, active = 1
  WHERE questions.updated_at IS NULL;
INSERT INTO questions (id, topic_id, week, type, source, prompt, payload, answer, explanation, difficulty, source_ref, active)
VALUES ('h4-ilk-ornek', 'konvolusyon-temel', 4, 'num', 'derived', 'x(0) = 2, x(1) = 1 ve h(0) = 3, h(1) = −1, h(2) = 2 (diğer örnekler 0). y(n) = x(n) * h(n) için:

y(0) = ____ , y(1) = ____', '{"blanks":2}', '{"blanks":[["6"],["1"]]}', 'y(0) = x(0)h(0) = 6. y(1) = x(0)h(1) + x(1)h(0) = −2 + 3 = 1.', 2, 'Hafta 4, Konvolüsyon', 1)
  ON CONFLICT(id) DO UPDATE SET topic_id = excluded.topic_id, week = excluded.week, type = excluded.type,
    source = excluded.source, prompt = excluded.prompt, payload = excluded.payload, answer = excluded.answer,
    explanation = excluded.explanation, difficulty = excluded.difficulty, source_ref = excluded.source_ref, active = 1
  WHERE questions.updated_at IS NULL;
INSERT INTO questions (id, topic_id, week, type, source, prompt, payload, answer, explanation, difficulty, source_ref, active)
VALUES ('h4-lti-tek', 'konvolusyon-temel', 4, 'tf', 'derived', 'LTI bir sistemin dürtü yanıtı biliniyorsa, herhangi bir girişe çıkışı konvolüsyonla hesaplanabilir.', '{}', '{"value":true}', 'Doğru. Her giriş kaydırılmış dürtülerin toplamıdır; doğrusallık ve zamanla değişmezlik sayesinde çıkış, kaydırılmış dürtü yanıtlarının toplamıdır.', 1, 'Hafta 4, Konvolüsyon', 1)
  ON CONFLICT(id) DO UPDATE SET topic_id = excluded.topic_id, week = excluded.week, type = excluded.type,
    source = excluded.source, prompt = excluded.prompt, payload = excluded.payload, answer = excluded.answer,
    explanation = excluded.explanation, difficulty = excluded.difficulty, source_ref = excluded.source_ref, active = 1
  WHERE questions.updated_at IS NULL;
INSERT INTO questions (id, topic_id, week, type, source, prompt, payload, answer, explanation, difficulty, source_ref, active)
VALUES ('h4-degisme', 'konvolusyon-temel', 4, 'tf', 'original', 'Her x(n) ve h(n) için x(n) * h(n) = h(n) * x(n) eşitliği sağlanır.', '{}', '{"value":true}', 'Doğru. Bu değişme özelliğidir: dürtü yanıtı h ve girişi x olan sistem, dürtü yanıtı x ve girişi h olan sistemle aynı çıkışı verir.', 1, 'Hafta 4, Konvolüsyon özellikleri', 1)
  ON CONFLICT(id) DO UPDATE SET topic_id = excluded.topic_id, week = excluded.week, type = excluded.type,
    source = excluded.source, prompt = excluded.prompt, payload = excluded.payload, answer = excluded.answer,
    explanation = excluded.explanation, difficulty = excluded.difficulty, source_ref = excluded.source_ref, active = 1
  WHERE questions.updated_at IS NULL;
INSERT INTO questions (id, topic_id, week, type, source, prompt, payload, answer, explanation, difficulty, source_ref, active)
VALUES ('h4-kaskat', 'konvolusyon-temel', 4, 'mcq', 'original', 'Dürtü yanıtları $h_1(n)$ ve $h_2(n)$ olan iki LTI sistem art arda (kaskat) bağlanıyor. Eşdeğer sistemin dürtü yanıtı nedir?', '{"choices":["$h_1(n) * h_2(n)$","$h_1(n) + h_2(n)$","$h_1(n)\\,h_2(n)$","$h_1(n) - h_2(n)$"]}', '{"index":0}', 'Birleşme özelliği: (x * h₁) * h₂ = x * (h₁ * h₂). Kaskat bağlantıda dürtü yanıtları konvolüsyona girer.', 1, 'Hafta 4, Konvolüsyon özellikleri', 1)
  ON CONFLICT(id) DO UPDATE SET topic_id = excluded.topic_id, week = excluded.week, type = excluded.type,
    source = excluded.source, prompt = excluded.prompt, payload = excluded.payload, answer = excluded.answer,
    explanation = excluded.explanation, difficulty = excluded.difficulty, source_ref = excluded.source_ref, active = 1
  WHERE questions.updated_at IS NULL;
INSERT INTO questions (id, topic_id, week, type, source, prompt, payload, answer, explanation, difficulty, source_ref, active)
VALUES ('h4-paralel', 'konvolusyon-temel', 4, 'fill', 'original', 'Dürtü yanıtları h1 ve h2 olan iki LTI sistem paralel bağlanıyor (aynı giriş, çıkışlar toplanıyor). Eşdeğer dürtü yanıtı ____ olur.', '{"blanks":1}', '{"blanks":[["h1 + h2","h1(n) + h2(n)","h₁ + h₂","h₁(n) + h₂(n)","h2 + h1"]]}', 'Dağılma özelliği: x * h₁ + x * h₂ = x * (h₁ + h₂). Paralel bağlantıda dürtü yanıtları toplanır.', 1, 'Hafta 4, Konvolüsyon özellikleri', 1)
  ON CONFLICT(id) DO UPDATE SET topic_id = excluded.topic_id, week = excluded.week, type = excluded.type,
    source = excluded.source, prompt = excluded.prompt, payload = excluded.payload, answer = excluded.answer,
    explanation = excluded.explanation, difficulty = excluded.difficulty, source_ref = excluded.source_ref, active = 1
  WHERE questions.updated_at IS NULL;
INSERT INTO questions (id, topic_id, week, type, source, prompt, payload, answer, explanation, difficulty, source_ref, active)
VALUES ('h4-kaskat-hesap', 'konvolusyon-temel', 4, 'num', 'derived', '$h_1(n) = \delta(n) + \delta(n-1)$ ve $h_2(n) = \delta(n) + 2\delta(n-1)$ kaskat bağlı. Eşdeğer dürtü yanıtını n = 0''dan başlayarak dizi olarak yaz.', '{"blanks":1}', '{"blanks":[["[1 3 2]"]]}', 'h₁ * h₂ = δ(n) + 2δ(n − 1) + δ(n − 1) + 2δ(n − 2) = δ(n) + 3δ(n − 1) + 2δ(n − 2).', 2, 'Hafta 4, Konvolüsyon özellikleri', 1)
  ON CONFLICT(id) DO UPDATE SET topic_id = excluded.topic_id, week = excluded.week, type = excluded.type,
    source = excluded.source, prompt = excluded.prompt, payload = excluded.payload, answer = excluded.answer,
    explanation = excluded.explanation, difficulty = excluded.difficulty, source_ref = excluded.source_ref, active = 1
  WHERE questions.updated_at IS NULL;
INSERT INTO questions (id, topic_id, week, type, source, prompt, payload, answer, explanation, difficulty, source_ref, active)
VALUES ('h4-paralel-hesap', 'konvolusyon-temel', 4, 'num', 'derived', '$h_1(n) = 2\delta(n) - \delta(n-1)$ ve $h_2(n) = \delta(n-1) + 3\delta(n-2)$ paralel bağlı. Eşdeğer dürtü yanıtını n = 0''dan başlayarak dizi olarak yaz.', '{"blanks":1}', '{"blanks":[["[2 0 3]"]]}', 'Paralel: h₁ + h₂ = 2δ(n) + (−1 + 1)δ(n − 1) + 3δ(n − 2) = 2δ(n) + 3δ(n − 2).', 2, 'Hafta 4, Konvolüsyon özellikleri', 1)
  ON CONFLICT(id) DO UPDATE SET topic_id = excluded.topic_id, week = excluded.week, type = excluded.type,
    source = excluded.source, prompt = excluded.prompt, payload = excluded.payload, answer = excluded.answer,
    explanation = excluded.explanation, difficulty = excluded.difficulty, source_ref = excluded.source_ref, active = 1
  WHERE questions.updated_at IS NULL;
INSERT INTO questions (id, topic_id, week, type, source, prompt, payload, answer, explanation, difficulty, source_ref, active)
VALUES ('h4-geometrik', 'konvolusyon-temel', 4, 'num', 'original', '$\displaystyle\sum_{n=0}^{\infty} (0{,}5)^n$ toplamı kaçtır?', '{"blanks":1}', '{"blanks":[["2"]]}', '|a| < 1 için Σ aⁿ = 1/(1 − a) = 1/0,5 = 2.', 1, 'Hafta 4, Doğrudan değerlendirme', 1)
  ON CONFLICT(id) DO UPDATE SET topic_id = excluded.topic_id, week = excluded.week, type = excluded.type,
    source = excluded.source, prompt = excluded.prompt, payload = excluded.payload, answer = excluded.answer,
    explanation = excluded.explanation, difficulty = excluded.difficulty, source_ref = excluded.source_ref, active = 1
  WHERE questions.updated_at IS NULL;
INSERT INTO questions (id, topic_id, week, type, source, prompt, payload, answer, explanation, difficulty, source_ref, active)
VALUES ('h4-geo-sonlu', 'konvolusyon-temel', 4, 'num', 'original', '$\displaystyle\sum_{n=0}^{3} 2^n$ toplamını $(1 - a^N)/(1 - a)$ formülüyle hesapla.', '{"blanks":1}', '{"blanks":[["15"]]}', 'a = 2, N = 4: (1 − 16)/(1 − 2) = 15. Sağlama: 1 + 2 + 4 + 8 = 15.', 1, 'Hafta 4, Doğrudan değerlendirme', 1)
  ON CONFLICT(id) DO UPDATE SET topic_id = excluded.topic_id, week = excluded.week, type = excluded.type,
    source = excluded.source, prompt = excluded.prompt, payload = excluded.payload, answer = excluded.answer,
    explanation = excluded.explanation, difficulty = excluded.difficulty, source_ref = excluded.source_ref, active = 1
  WHERE questions.updated_at IS NULL;
INSERT INTO questions (id, topic_id, week, type, source, prompt, payload, answer, explanation, difficulty, source_ref, active)
VALUES ('h4-ustel-basamak', 'konvolusyon-temel', 4, 'num', 'original', '$y(n) = (0{,}5)^n u(n) * u(n)$ için y(2) kaçtır?', '{"blanks":1}', '{"blanks":[["1.75"]]}', 'y(n) = Σₖ₌₀ⁿ (0,5)ᵏ. y(2) = 1 + 0,5 + 0,25 = 1,75. Formülle: (1 − 0,5³)/(1 − 0,5) = 1,75.', 2, 'Hafta 4, Doğrudan değerlendirme', 1)
  ON CONFLICT(id) DO UPDATE SET topic_id = excluded.topic_id, week = excluded.week, type = excluded.type,
    source = excluded.source, prompt = excluded.prompt, payload = excluded.payload, answer = excluded.answer,
    explanation = excluded.explanation, difficulty = excluded.difficulty, source_ref = excluded.source_ref, active = 1
  WHERE questions.updated_at IS NULL;
INSERT INTO questions (id, topic_id, week, type, source, prompt, payload, answer, explanation, difficulty, source_ref, active)
VALUES ('h4-ustel-limit', 'konvolusyon-temel', 4, 'num', 'derived', '$y(n) = (0{,}75)^n u(n) * u(n)$ dizisi n → ∞ iken hangi değere yaklaşır?', '{"blanks":1}', '{"blanks":[["4"]]}', 'y(n) = (1 − aⁿ⁺¹)/(1 − a) → 1/(1 − a) = 1/0,25 = 4.', 2, 'Hafta 4, Doğrudan değerlendirme', 1)
  ON CONFLICT(id) DO UPDATE SET topic_id = excluded.topic_id, week = excluded.week, type = excluded.type,
    source = excluded.source, prompt = excluded.prompt, payload = excluded.payload, answer = excluded.answer,
    explanation = excluded.explanation, difficulty = excluded.difficulty, source_ref = excluded.source_ref, active = 1
  WHERE questions.updated_at IS NULL;
INSERT INTO questions (id, topic_id, week, type, source, prompt, payload, answer, explanation, difficulty, source_ref, active)
VALUES ('h4-iki-ustel', 'konvolusyon-temel', 4, 'mcq', 'original', '$(1/2)^n u(n) * (1/2)^n u(n)$ konvolüsyonu nedir?', '{"choices":["$(n+1)(1/2)^n u(n)$","$(1/4)^n u(n)$","$n\\,(1/2)^n u(n)$","$2\\,(1/2)^n u(n)$"]}', '{"index":0}', 'y(n) = Σₖ₌₀ⁿ (1/2)ᵏ (1/2)ⁿ⁻ᵏ = Σₖ₌₀ⁿ (1/2)ⁿ = (n + 1)(1/2)ⁿ. Her terim aynıdır ve n + 1 terim vardır.', 3, 'Hafta 4, Doğrudan değerlendirme', 1)
  ON CONFLICT(id) DO UPDATE SET topic_id = excluded.topic_id, week = excluded.week, type = excluded.type,
    source = excluded.source, prompt = excluded.prompt, payload = excluded.payload, answer = excluded.answer,
    explanation = excluded.explanation, difficulty = excluded.difficulty, source_ref = excluded.source_ref, active = 1
  WHERE questions.updated_at IS NULL;
INSERT INTO questions (id, topic_id, week, type, source, prompt, payload, answer, explanation, difficulty, source_ref, active)
VALUES ('h4-seri-n', 'konvolusyon-temel', 4, 'num', 'derived', '$\displaystyle\sum_{n=0}^{N-1} n$ toplamı N = 5 için kaçtır?', '{"blanks":1}', '{"blanks":[["10"]]}', 'N(N − 1)/2 = 5·4/2 = 10. Sağlama: 0 + 1 + 2 + 3 + 4 = 10.', 1, 'Hafta 4, Doğrudan değerlendirme', 1)
  ON CONFLICT(id) DO UPDATE SET topic_id = excluded.topic_id, week = excluded.week, type = excluded.type,
    source = excluded.source, prompt = excluded.prompt, payload = excluded.payload, answer = excluded.answer,
    explanation = excluded.explanation, difficulty = excluded.difficulty, source_ref = excluded.source_ref, active = 1
  WHERE questions.updated_at IS NULL;
INSERT INTO questions (id, topic_id, week, type, source, prompt, payload, answer, explanation, difficulty, source_ref, active)
VALUES ('h4-uzunluk', 'konvolusyon-hesap', 4, 'num', 'original', 'x(n) 7, h(n) 4 örnek uzunluğunda. y(n) = x(n) * h(n) kaç örnek uzunluğundadır?', '{"blanks":1}', '{"blanks":[["10"]]}', 'L = L₁ + L₂ − 1 = 7 + 4 − 1 = 10.', 1, 'Hafta 4, Konvolüsyonun uzunluğu', 1)
  ON CONFLICT(id) DO UPDATE SET topic_id = excluded.topic_id, week = excluded.week, type = excluded.type,
    source = excluded.source, prompt = excluded.prompt, payload = excluded.payload, answer = excluded.answer,
    explanation = excluded.explanation, difficulty = excluded.difficulty, source_ref = excluded.source_ref, active = 1
  WHERE questions.updated_at IS NULL;
INSERT INTO questions (id, topic_id, week, type, source, prompt, payload, answer, explanation, difficulty, source_ref, active)
VALUES ('h4-aralik', 'konvolusyon-hesap', 4, 'num', 'original', 'x(n) yalnızca −2 ≤ n ≤ 5, h(n) yalnızca 1 ≤ n ≤ 4 aralığında sıfırdan farklı. y(n) = x(n) * h(n) hangi aralıkta sıfırdan farklı olabilir?

____ ≤ n ≤ ____', '{"blanks":2}', '{"blanks":[["-1"],["9"]]}', '[Mx + Mh, Nx + Nh] = [−2 + 1, 5 + 4] = [−1, 9].', 2, 'Hafta 4, Konvolüsyonun uzunluğu', 1)
  ON CONFLICT(id) DO UPDATE SET topic_id = excluded.topic_id, week = excluded.week, type = excluded.type,
    source = excluded.source, prompt = excluded.prompt, payload = excluded.payload, answer = excluded.answer,
    explanation = excluded.explanation, difficulty = excluded.difficulty, source_ref = excluded.source_ref, active = 1
  WHERE questions.updated_at IS NULL;
INSERT INTO questions (id, topic_id, week, type, source, prompt, payload, answer, explanation, difficulty, source_ref, active)
VALUES ('h4-ilk-son', 'konvolusyon-hesap', 4, 'num', 'original', 'x(n)''in ilk sıfırdan farklı değeri n = −3''te 2, sonuncusu n = 10''da 5''tir. y(n) = x(n) * x(n) için:

ilk sıfırdan farklı örneğin indisi ____ ve değeri ____ ; son sıfırdan farklı örneğin indisi ____ ve değeri ____', '{"blanks":4}', '{"blanks":[["-6"],["4"],["20"],["25"]]}', 'İlk örnek, ilk örneklerin çarpımıdır: n = −3 + (−3) = −6, değer 2·2 = 4. Son örnek: n = 10 + 10 = 20, değer 5·5 = 25.', 3, 'Hafta 4, Konvolüsyonun uzunluğu', 1)
  ON CONFLICT(id) DO UPDATE SET topic_id = excluded.topic_id, week = excluded.week, type = excluded.type,
    source = excluded.source, prompt = excluded.prompt, payload = excluded.payload, answer = excluded.answer,
    explanation = excluded.explanation, difficulty = excluded.difficulty, source_ref = excluded.source_ref, active = 1
  WHERE questions.updated_at IS NULL;
INSERT INTO questions (id, topic_id, week, type, source, prompt, payload, answer, explanation, difficulty, source_ref, active)
VALUES ('h4-uzunluk-tf', 'konvolusyon-hesap', 4, 'tf', 'derived', 'Uzunluğu 5 olan iki dizinin konvolüsyonu 10 örnek uzunluğundadır.', '{}', '{"value":false}', 'Yanlış. L = 5 + 5 − 1 = 9.', 1, 'Hafta 4, Konvolüsyonun uzunluğu', 1)
  ON CONFLICT(id) DO UPDATE SET topic_id = excluded.topic_id, week = excluded.week, type = excluded.type,
    source = excluded.source, prompt = excluded.prompt, payload = excluded.payload, answer = excluded.answer,
    explanation = excluded.explanation, difficulty = excluded.difficulty, source_ref = excluded.source_ref, active = 1
  WHERE questions.updated_at IS NULL;
INSERT INTO questions (id, topic_id, week, type, source, prompt, payload, answer, explanation, difficulty, source_ref, active)
VALUES ('h4-sonsuz', 'konvolusyon-hesap', 4, 'tf', 'derived', '$(0{,}9)^n u(n)$ dizisi ile 3 örnek uzunluğunda bir dizinin konvolüsyonu sonlu uzunluktadır.', '{}', '{"value":false}', 'Yanlış. Dizilerden biri sonsuz uzunlukta olduğu için çıkış da sonsuz uzunluktadır; L₁ + L₂ − 1 kuralı yalnızca iki sonlu dizi için geçerlidir.', 2, 'Hafta 4, Konvolüsyonun uzunluğu', 1)
  ON CONFLICT(id) DO UPDATE SET topic_id = excluded.topic_id, week = excluded.week, type = excluded.type,
    source = excluded.source, prompt = excluded.prompt, payload = excluded.payload, answer = excluded.answer,
    explanation = excluded.explanation, difficulty = excluded.difficulty, source_ref = excluded.source_ref, active = 1
  WHERE questions.updated_at IS NULL;
INSERT INTO questions (id, topic_id, week, type, source, prompt, payload, answer, explanation, difficulty, source_ref, active)
VALUES ('h4-grafik-adim', 'konvolusyon-hesap', 4, 'mcq', 'original', 'Grafik yöntemde h(n − k) dizisi h(k)''den nasıl elde edilir?', '{"choices":["Ters çevrilir, sonra n kadar kaydırılır","n kadar kaydırılır, ters çevrilmez","Ters çevrilir, sonra −n kadar kaydırılır","n ile çarpılır, sonra ters çevrilir"]}', '{"index":0}', 'h(k) → h(−k) (ters çevirme) → h(−(k − n)) = h(n − k): n kadar kaydırma. n > 0 ise sağa kayar.', 1, 'Hafta 4, Grafik yaklaşım', 1)
  ON CONFLICT(id) DO UPDATE SET topic_id = excluded.topic_id, week = excluded.week, type = excluded.type,
    source = excluded.source, prompt = excluded.prompt, payload = excluded.payload, answer = excluded.answer,
    explanation = excluded.explanation, difficulty = excluded.difficulty, source_ref = excluded.source_ref, active = 1
  WHERE questions.updated_at IS NULL;
INSERT INTO questions (id, topic_id, week, type, source, prompt, payload, answer, explanation, difficulty, source_ref, active)
VALUES ('h4-grafik-yon', 'konvolusyon-hesap', 4, 'tf', 'original', 'Grafik yöntemde n < 0 iken ters çevrilmiş h(n − k) dizisi sola kayar.', '{}', '{"value":true}', 'Doğru. n > 0 sağa kayma (gecikme), n < 0 sola kayma (ilerleme) demektir.', 1, 'Hafta 4, Grafik yaklaşım', 1)
  ON CONFLICT(id) DO UPDATE SET topic_id = excluded.topic_id, week = excluded.week, type = excluded.type,
    source = excluded.source, prompt = excluded.prompt, payload = excluded.payload, answer = excluded.answer,
    explanation = excluded.explanation, difficulty = excluded.difficulty, source_ref = excluded.source_ref, active = 1
  WHERE questions.updated_at IS NULL;
INSERT INTO questions (id, topic_id, week, type, source, prompt, payload, answer, explanation, difficulty, source_ref, active)
VALUES ('h4-grafik-hesap', 'konvolusyon-hesap', 4, 'num', 'derived', 'x(n): n = 0..3 için 1, 3, −1, 2. h(n): n = 0..2 için 2, 1, 1. y(n) = x(n) * h(n) için:

y(2) = ____ , y(3) = ____', '{"blanks":2}', '{"blanks":[["2"],["6"]]}', 'y(2) = x(0)h(2) + x(1)h(1) + x(2)h(0) = 1 + 3 − 2 = 2. y(3) = x(1)h(2) + x(2)h(1) + x(3)h(0) = 3 − 1 + 4 = 6.', 2, 'Hafta 4, Grafik yaklaşım', 1)
  ON CONFLICT(id) DO UPDATE SET topic_id = excluded.topic_id, week = excluded.week, type = excluded.type,
    source = excluded.source, prompt = excluded.prompt, payload = excluded.payload, answer = excluded.answer,
    explanation = excluded.explanation, difficulty = excluded.difficulty, source_ref = excluded.source_ref, active = 1
  WHERE questions.updated_at IS NULL;
INSERT INTO questions (id, topic_id, week, type, source, prompt, payload, answer, explanation, difficulty, source_ref, active)
VALUES ('h4-grafik-negatif', 'konvolusyon-hesap', 4, 'num', 'derived', 'x(n): n = −1, 0, 1 için 1, 2, 3. h(n): n = 0, 1 için 1, −1. y(n) = x(n) * h(n) dizisinin ilk sıfırdan farklı örneği hangi n''dedir ve y(2) kaçtır?

ilk örnek: n = ____ , y(2) = ____', '{"blanks":2}', '{"blanks":[["-1"],["-3"]]}', 'Başlangıç Mx + Mh = −1 + 0 = −1. y(2) = x(1)h(1) = 3·(−1) = −3 (n = 2''de yalnızca bu çift örtüşür).', 3, 'Hafta 4, Grafik yaklaşım', 1)
  ON CONFLICT(id) DO UPDATE SET topic_id = excluded.topic_id, week = excluded.week, type = excluded.type,
    source = excluded.source, prompt = excluded.prompt, payload = excluded.payload, answer = excluded.answer,
    explanation = excluded.explanation, difficulty = excluded.difficulty, source_ref = excluded.source_ref, active = 1
  WHERE questions.updated_at IS NULL;
INSERT INTO questions (id, topic_id, week, type, source, prompt, payload, answer, explanation, difficulty, source_ref, active)
VALUES ('h4-tum-dizi', 'konvolusyon-hesap', 4, 'num', 'derived', 'x(n) = δ(n) + 2δ(n − 1) ve h(n) = u(n) − u(n − 3). y(n) = x(n) * h(n) dizisini n = 0''dan başlayarak yaz.', '{"blanks":1}', '{"blanks":[["[1 3 3 2]"]]}', 'h, n = 0..2''de 1''dir. y = h(n) + 2h(n − 1): n = 0..3 için 1, 1 + 2, 1 + 2, 2.', 2, 'Hafta 4, Grafik yaklaşım', 1)
  ON CONFLICT(id) DO UPDATE SET topic_id = excluded.topic_id, week = excluded.week, type = excluded.type,
    source = excluded.source, prompt = excluded.prompt, payload = excluded.payload, answer = excluded.answer,
    explanation = excluded.explanation, difficulty = excluded.difficulty, source_ref = excluded.source_ref, active = 1
  WHERE questions.updated_at IS NULL;
INSERT INTO questions (id, topic_id, week, type, source, prompt, payload, answer, explanation, difficulty, source_ref, active)
VALUES ('h4-kaydirma-tum', 'konvolusyon-hesap', 4, 'num', 'derived', 'x(n) = {2, 1, 3} ve h(n) = {1, 2, 1}, ikisi de n = 0''dan başlıyor. Kaydırma kuralıyla y(n) = x(n) * h(n) dizisini bul.', '{"blanks":1}', '{"blanks":[["[2 5 7 7 3]"]]}', 'y(0) = 2·1 = 2; y(1) = 2·2 + 1·1 = 5; y(2) = 2·1 + 1·2 + 3·1 = 7; y(3) = 1·1 + 3·2 = 7; y(4) = 3·1 = 3.', 2, 'Hafta 4, Kaydırma kuralı', 1)
  ON CONFLICT(id) DO UPDATE SET topic_id = excluded.topic_id, week = excluded.week, type = excluded.type,
    source = excluded.source, prompt = excluded.prompt, payload = excluded.payload, answer = excluded.answer,
    explanation = excluded.explanation, difficulty = excluded.difficulty, source_ref = excluded.source_ref, active = 1
  WHERE questions.updated_at IS NULL;
INSERT INTO questions (id, topic_id, week, type, source, prompt, payload, answer, explanation, difficulty, source_ref, active)
VALUES ('h4-kaydirma-ters', 'konvolusyon-hesap', 4, 'tf', 'original', 'Kaydırma kuralında ikinci şeride h(k) değerleri ters sırada, yani h(−k) olarak yazılır.', '{}', '{"value":true}', 'Doğru. x(0) ile h(0) alt alta getirilir; h(1), h(2), ... h(0)''ın solunda durur. Sonra şerit sağa kaydırılır.', 1, 'Hafta 4, Kaydırma kuralı', 1)
  ON CONFLICT(id) DO UPDATE SET topic_id = excluded.topic_id, week = excluded.week, type = excluded.type,
    source = excluded.source, prompt = excluded.prompt, payload = excluded.payload, answer = excluded.answer,
    explanation = excluded.explanation, difficulty = excluded.difficulty, source_ref = excluded.source_ref, active = 1
  WHERE questions.updated_at IS NULL;
INSERT INTO questions (id, topic_id, week, type, source, prompt, payload, answer, explanation, difficulty, source_ref, active)
VALUES ('h4-kaydirma-sayi', 'konvolusyon-hesap', 4, 'num', 'derived', 'Uzunlukları 4 ve 3 olan, ikisi de n = 0''dan başlayan iki dizi kaydırma kuralıyla konvolüsyona sokuluyor. y(0) dahil kaç farklı y(n) değeri hesaplanır (sıfırdan farklı olabilecekler)?', '{"blanks":1}', '{"blanks":[["6"]]}', 'Çıkışın uzunluğu 4 + 3 − 1 = 6: y(0)''dan y(5)''e.', 2, 'Hafta 4, Kaydırma kuralı', 1)
  ON CONFLICT(id) DO UPDATE SET topic_id = excluded.topic_id, week = excluded.week, type = excluded.type,
    source = excluded.source, prompt = excluded.prompt, payload = excluded.payload, answer = excluded.answer,
    explanation = excluded.explanation, difficulty = excluded.difficulty, source_ref = excluded.source_ref, active = 1
  WHERE questions.updated_at IS NULL;
INSERT INTO questions (id, topic_id, week, type, source, prompt, payload, answer, explanation, difficulty, source_ref, active)
VALUES ('h4-polinom', 'konvolusyon-hesap', 4, 'num', 'derived', '(1 + z)(2 + 3z) çarpımının katsayılarını sabit terimden başlayarak dizi olarak yaz.', '{"blanks":1}', '{"blanks":[["[2 5 3]"]]}', '2 + 3z + 2z + 3z² = 2 + 5z + 3z². Bu, (1, 1) ile (2, 3) dizilerinin konvolüsyonudur.', 1, 'Hafta 4, Polinom çarpımı', 1)
  ON CONFLICT(id) DO UPDATE SET topic_id = excluded.topic_id, week = excluded.week, type = excluded.type,
    source = excluded.source, prompt = excluded.prompt, payload = excluded.payload, answer = excluded.answer,
    explanation = excluded.explanation, difficulty = excluded.difficulty, source_ref = excluded.source_ref, active = 1
  WHERE questions.updated_at IS NULL;
INSERT INTO questions (id, topic_id, week, type, source, prompt, payload, answer, explanation, difficulty, source_ref, active)
VALUES ('h4-polinom-2', 'konvolusyon-hesap', 4, 'num', 'derived', '(1 + 2z + z²)(1 − z) çarpımının katsayılarını sabit terimden başlayarak dizi olarak yaz.', '{"blanks":1}', '{"blanks":[["[1 1 -1 -1]"]]}', 'Konvolüsyon: 1; 2 − 1 = 1; 1 − 2 = −1; −1. Yani 1 + z − z² − z³.', 2, 'Hafta 4, Polinom çarpımı', 1)
  ON CONFLICT(id) DO UPDATE SET topic_id = excluded.topic_id, week = excluded.week, type = excluded.type,
    source = excluded.source, prompt = excluded.prompt, payload = excluded.payload, answer = excluded.answer,
    explanation = excluded.explanation, difficulty = excluded.difficulty, source_ref = excluded.source_ref, active = 1
  WHERE questions.updated_at IS NULL;
INSERT INTO questions (id, topic_id, week, type, source, prompt, payload, answer, explanation, difficulty, source_ref, active)
VALUES ('h4-tablo-kosegen', 'konvolusyon-hesap', 4, 'num', 'original', 'Çarpım tablosu yönteminde x(2)·h(3) çarpımı (ikisi de n = 0''dan başlıyor) y(n)''nin hangi örneğine eklenir? n = ____', '{"blanks":1}', '{"blanks":[["5"]]}', 'Hücre (i, j), y(i + j)''ye eklenir: 2 + 3 = 5. Aynı ters köşegendeki hücreler aynı çıkış örneğini oluşturur.', 2, 'Hafta 4, Polinom çarpımı', 1)
  ON CONFLICT(id) DO UPDATE SET topic_id = excluded.topic_id, week = excluded.week, type = excluded.type,
    source = excluded.source, prompt = excluded.prompt, payload = excluded.payload, answer = excluded.answer,
    explanation = excluded.explanation, difficulty = excluded.difficulty, source_ref = excluded.source_ref, active = 1
  WHERE questions.updated_at IS NULL;
INSERT INTO questions (id, topic_id, week, type, source, prompt, payload, answer, explanation, difficulty, source_ref, active)
VALUES ('h4-matlab-conv', 'konvolusyon-hesap', 4, 'fill', 'derived', 'MATLAB''da iki polinomun katsayı vektörlerini çarpmak için kullanılan fonksiyon hangisidir?', '{"blanks":1}', '{"blanks":[["conv"]]}', 'conv: polinom çarpımı, katsayı dizilerinin konvolüsyonudur.', 1, 'Hafta 4, Polinom çarpımı', 1)
  ON CONFLICT(id) DO UPDATE SET topic_id = excluded.topic_id, week = excluded.week, type = excluded.type,
    source = excluded.source, prompt = excluded.prompt, payload = excluded.payload, answer = excluded.answer,
    explanation = excluded.explanation, difficulty = excluded.difficulty, source_ref = excluded.source_ref, active = 1
  WHERE questions.updated_at IS NULL;
INSERT INTO questions (id, topic_id, week, type, source, prompt, payload, answer, explanation, difficulty, source_ref, active)
VALUES ('h4-zar-7', 'konvolusyon-uygulama', 4, 'num', 'original', 'İki adil zar atılıyor. Toplamın 7 olma olasılığı kaçtır?', '{"blanks":1}', '{"blanks":[["1/6"]]}', '36 eşit olasılıklı çiftten 6''sı 7 verir: 6/36 = 1/6.', 1, 'Hafta 4, Olasılık ve konvolüsyon', 1)
  ON CONFLICT(id) DO UPDATE SET topic_id = excluded.topic_id, week = excluded.week, type = excluded.type,
    source = excluded.source, prompt = excluded.prompt, payload = excluded.payload, answer = excluded.answer,
    explanation = excluded.explanation, difficulty = excluded.difficulty, source_ref = excluded.source_ref, active = 1
  WHERE questions.updated_at IS NULL;
INSERT INTO questions (id, topic_id, week, type, source, prompt, payload, answer, explanation, difficulty, source_ref, active)
VALUES ('h4-zar-4', 'konvolusyon-uygulama', 4, 'num', 'derived', 'İki adil zarın toplamının 5 olma olasılığı kaçtır?', '{"blanks":1}', '{"blanks":[["1/9"]]}', '(1,4), (2,3), (3,2), (4,1): 4/36 = 1/9. Bu, zar pmf''sinin kendisiyle konvolüsyonunun s = 5''teki değeridir.', 2, 'Hafta 4, Olasılık ve konvolüsyon', 1)
  ON CONFLICT(id) DO UPDATE SET topic_id = excluded.topic_id, week = excluded.week, type = excluded.type,
    source = excluded.source, prompt = excluded.prompt, payload = excluded.payload, answer = excluded.answer,
    explanation = excluded.explanation, difficulty = excluded.difficulty, source_ref = excluded.source_ref, active = 1
  WHERE questions.updated_at IS NULL;
INSERT INTO questions (id, topic_id, week, type, source, prompt, payload, answer, explanation, difficulty, source_ref, active)
VALUES ('h4-zar-sayi', 'konvolusyon-uygulama', 4, 'num', 'derived', 'İki zarın toplamı kaç farklı değer alabilir?', '{"blanks":1}', '{"blanks":[["11"]]}', '2''den 12''ye: 11 değer. Uzunluk kuralı: 6 + 6 − 1 = 11.', 1, 'Hafta 4, Olasılık ve konvolüsyon', 1)
  ON CONFLICT(id) DO UPDATE SET topic_id = excluded.topic_id, week = excluded.week, type = excluded.type,
    source = excluded.source, prompt = excluded.prompt, payload = excluded.payload, answer = excluded.answer,
    explanation = excluded.explanation, difficulty = excluded.difficulty, source_ref = excluded.source_ref, active = 1
  WHERE questions.updated_at IS NULL;
INSERT INTO questions (id, topic_id, week, type, source, prompt, payload, answer, explanation, difficulty, source_ref, active)
VALUES ('h4-zar-uc', 'konvolusyon-uygulama', 4, 'num', 'derived', 'Üç zarın toplamı kaç farklı değer alabilir?', '{"blanks":1}', '{"blanks":[["16"]]}', '3''ten 18''e: 16 değer. İki zarın dağılımı (11 değer) bir zarla (6 değer) konvolüsyona girer: 11 + 6 − 1 = 16.', 2, 'Hafta 4, Olasılık ve konvolüsyon', 1)
  ON CONFLICT(id) DO UPDATE SET topic_id = excluded.topic_id, week = excluded.week, type = excluded.type,
    source = excluded.source, prompt = excluded.prompt, payload = excluded.payload, answer = excluded.answer,
    explanation = excluded.explanation, difficulty = excluded.difficulty, source_ref = excluded.source_ref, active = 1
  WHERE questions.updated_at IS NULL;
INSERT INTO questions (id, topic_id, week, type, source, prompt, payload, answer, explanation, difficulty, source_ref, active)
VALUES ('h4-hileli', 'konvolusyon-uygulama', 4, 'num', 'original', 'Hileli bir zarda 6 gelme olasılığı 0,5, diğer her yüzünki 0,1. Bu zardan iki tane atılıyor. Toplamın 12 olma olasılığı kaçtır?', '{"blanks":1}', '{"blanks":[["0.25"]]}', '12 yalnızca (6, 6) ile olur: 0,5 · 0,5 = 0,25.', 2, 'Hafta 4, Olasılık ve konvolüsyon', 1)
  ON CONFLICT(id) DO UPDATE SET topic_id = excluded.topic_id, week = excluded.week, type = excluded.type,
    source = excluded.source, prompt = excluded.prompt, payload = excluded.payload, answer = excluded.answer,
    explanation = excluded.explanation, difficulty = excluded.difficulty, source_ref = excluded.source_ref, active = 1
  WHERE questions.updated_at IS NULL;
INSERT INTO questions (id, topic_id, week, type, source, prompt, payload, answer, explanation, difficulty, source_ref, active)
VALUES ('h4-pmf-tf', 'konvolusyon-uygulama', 4, 'tf', 'original', 'İki bağımsız tamsayı değerli rastgele değişkenin toplamının pmf''si, pmf''lerinin konvolüsyonudur.', '{}', '{"value":true}', 'Doğru. P(toplam = s) = Σᵢ p₁(i) p₂(s − i): konvolüsyon toplamı.', 1, 'Hafta 4, Olasılık ve konvolüsyon', 1)
  ON CONFLICT(id) DO UPDATE SET topic_id = excluded.topic_id, week = excluded.week, type = excluded.type,
    source = excluded.source, prompt = excluded.prompt, payload = excluded.payload, answer = excluded.answer,
    explanation = excluded.explanation, difficulty = excluded.difficulty, source_ref = excluded.source_ref, active = 1
  WHERE questions.updated_at IS NULL;
INSERT INTO questions (id, topic_id, week, type, source, prompt, payload, answer, explanation, difficulty, source_ref, active)
VALUES ('h4-ma-katsayi', 'konvolusyon-uygulama', 4, 'num', 'original', '4 noktalı hareketli ortalamanın dürtü yanıtının her katsayısı kaçtır?', '{"blanks":1}', '{"blanks":[["0.25"]]}', 'h(n) = 1/M = 1/4, n = 0..3. Katsayıların toplamı 1''dir.', 1, 'Hafta 4, Hareketli ortalama', 1)
  ON CONFLICT(id) DO UPDATE SET topic_id = excluded.topic_id, week = excluded.week, type = excluded.type,
    source = excluded.source, prompt = excluded.prompt, payload = excluded.payload, answer = excluded.answer,
    explanation = excluded.explanation, difficulty = excluded.difficulty, source_ref = excluded.source_ref, active = 1
  WHERE questions.updated_at IS NULL;
INSERT INTO questions (id, topic_id, week, type, source, prompt, payload, answer, explanation, difficulty, source_ref, active)
VALUES ('h4-ma-cikis', 'konvolusyon-uygulama', 4, 'num', 'derived', 'x(n): n = 0..3 için 4, 8, 6, 2. 3 noktalı hareketli ortalama y(n) = [x(n) + x(n − 1) + x(n − 2)]/3 için:

y(2) = ____ , y(3) = ____', '{"blanks":2}', '{"blanks":[["6"],["16/3"]]}', 'y(2) = (6 + 8 + 4)/3 = 6. y(3) = (2 + 6 + 8)/3 = 16/3 ≈ 5,33.', 2, 'Hafta 4, Hareketli ortalama', 1)
  ON CONFLICT(id) DO UPDATE SET topic_id = excluded.topic_id, week = excluded.week, type = excluded.type,
    source = excluded.source, prompt = excluded.prompt, payload = excluded.payload, answer = excluded.answer,
    explanation = excluded.explanation, difficulty = excluded.difficulty, source_ref = excluded.source_ref, active = 1
  WHERE questions.updated_at IS NULL;
INSERT INTO questions (id, topic_id, week, type, source, prompt, payload, answer, explanation, difficulty, source_ref, active)
VALUES ('h4-ma-sabit', 'konvolusyon-uygulama', 4, 'tf', 'derived', 'Hareketli ortalamanın katsayılarının toplamı 1 olduğu için sabit bir giriş, başlangıçtaki geçişten sonra değişmeden çıkar.', '{}', '{"value":true}', 'Doğru. x(n) = c ise pencere dolduktan sonra y(n) = M · c/M = c.', 1, 'Hafta 4, Hareketli ortalama', 1)
  ON CONFLICT(id) DO UPDATE SET topic_id = excluded.topic_id, week = excluded.week, type = excluded.type,
    source = excluded.source, prompt = excluded.prompt, payload = excluded.payload, answer = excluded.answer,
    explanation = excluded.explanation, difficulty = excluded.difficulty, source_ref = excluded.source_ref, active = 1
  WHERE questions.updated_at IS NULL;
INSERT INTO questions (id, topic_id, week, type, source, prompt, payload, answer, explanation, difficulty, source_ref, active)
VALUES ('h4-ma-gecikme', 'konvolusyon-uygulama', 4, 'num', 'derived', '9 noktalı nedensel hareketli ortalamanın çıkışı girişin yaklaşık kaç örnek gerisinden gelir?', '{"blanks":1}', '{"blanks":[["4"]]}', '(M − 1)/2 = (9 − 1)/2 = 4.', 2, 'Hafta 4, Hareketli ortalama', 1)
  ON CONFLICT(id) DO UPDATE SET topic_id = excluded.topic_id, week = excluded.week, type = excluded.type,
    source = excluded.source, prompt = excluded.prompt, payload = excluded.payload, answer = excluded.answer,
    explanation = excluded.explanation, difficulty = excluded.difficulty, source_ref = excluded.source_ref, active = 1
  WHERE questions.updated_at IS NULL;
INSERT INTO questions (id, topic_id, week, type, source, prompt, payload, answer, explanation, difficulty, source_ref, active)
VALUES ('h4-ma-buyuk', 'konvolusyon-uygulama', 4, 'mcq', 'derived', 'Hareketli ortalamada pencere uzunluğu M büyütülürse ne olur?', '{"choices":["Gürültü azalır, hızlı değişimler de yumuşar","Gürültü artar, hızlı değişimler korunur","Gecikme azalır, çıkış girişi daha hızlı izler","Çıkışın ortalama seviyesi M kat büyür"]}', '{"index":0}', 'Daha çok örnek ortalanır: bağımsız gürültü azalır, ama sinyalin hızlı kısmı da ortalanıp silinir ve gecikme (M − 1)/2 artar. Katsayılar toplamı 1 olduğu için seviye değişmez.', 2, 'Hafta 4, Hareketli ortalama', 1)
  ON CONFLICT(id) DO UPDATE SET topic_id = excluded.topic_id, week = excluded.week, type = excluded.type,
    source = excluded.source, prompt = excluded.prompt, payload = excluded.payload, answer = excluded.answer,
    explanation = excluded.explanation, difficulty = excluded.difficulty, source_ref = excluded.source_ref, active = 1
  WHERE questions.updated_at IS NULL;
INSERT INTO questions (id, topic_id, week, type, source, prompt, payload, answer, explanation, difficulty, source_ref, active)
VALUES ('h4-korelasyon-fark', 'konvolusyon-uygulama', 4, 'mcq', 'original', 'Korelasyon toplamı $\sum_k x(k)\,h(n+k)$ konvolüsyondan hangi bakımdan ayrılır?', '{"choices":["h ters çevrilmez, yalnızca kaydırılır","h ters çevrilir ama kaydırılmaz","Çarpımlar toplanmaz, ortalaması alınır","Yalnızca sonlu dizilerde tanımlıdır"]}', '{"index":0}', 'Korelasyonda h(n + k) vardır, h(n − k) değil: dizi ters çevrilmez. Bu yüzden r_xh(n) = x(−n) * h(n).', 1, 'Hafta 4, Korelasyon', 1)
  ON CONFLICT(id) DO UPDATE SET topic_id = excluded.topic_id, week = excluded.week, type = excluded.type,
    source = excluded.source, prompt = excluded.prompt, payload = excluded.payload, answer = excluded.answer,
    explanation = excluded.explanation, difficulty = excluded.difficulty, source_ref = excluded.source_ref, active = 1
  WHERE questions.updated_at IS NULL;
INSERT INTO questions (id, topic_id, week, type, source, prompt, payload, answer, explanation, difficulty, source_ref, active)
VALUES ('h4-otokor-0', 'konvolusyon-uygulama', 4, 'num', 'derived', 'x(0) = 2, x(1) = −1, x(2) = 3 (başka yerde 0). Otokorelasyonun n = 0 değeri $r_{xx}(0)$ kaçtır?', '{"blanks":1}', '{"blanks":[["14"]]}', 'r_xx(0) = Σ x²(k) = 4 + 1 + 9 = 14: dizinin enerjisi.', 2, 'Hafta 4, Korelasyon', 1)
  ON CONFLICT(id) DO UPDATE SET topic_id = excluded.topic_id, week = excluded.week, type = excluded.type,
    source = excluded.source, prompt = excluded.prompt, payload = excluded.payload, answer = excluded.answer,
    explanation = excluded.explanation, difficulty = excluded.difficulty, source_ref = excluded.source_ref, active = 1
  WHERE questions.updated_at IS NULL;
INSERT INTO questions (id, topic_id, week, type, source, prompt, payload, answer, explanation, difficulty, source_ref, active)
VALUES ('h4-otokor-1', 'konvolusyon-uygulama', 4, 'num', 'derived', 'x(0) = 2, x(1) = −1, x(2) = 3 (başka yerde 0). $r_{xx}(1) = \sum_k x(k)\,x(k+1)$ kaçtır?', '{"blanks":1}', '{"blanks":[["-5"]]}', 'x(0)x(1) + x(1)x(2) = 2·(−1) + (−1)·3 = −5.', 2, 'Hafta 4, Korelasyon', 1)
  ON CONFLICT(id) DO UPDATE SET topic_id = excluded.topic_id, week = excluded.week, type = excluded.type,
    source = excluded.source, prompt = excluded.prompt, payload = excluded.payload, answer = excluded.answer,
    explanation = excluded.explanation, difficulty = excluded.difficulty, source_ref = excluded.source_ref, active = 1
  WHERE questions.updated_at IS NULL;
INSERT INTO questions (id, topic_id, week, type, source, prompt, payload, answer, explanation, difficulty, source_ref, active)
VALUES ('h4-otokor-simetri', 'konvolusyon-uygulama', 4, 'tf', 'original', 'Gerçel bir dizinin otokorelasyonu n = 0''a göre simetriktir: $r_{xx}(-n) = r_{xx}(n)$.', '{}', '{"value":true}', 'Doğru. Σ x(k)x(k − n) toplamında k yerine k + n yazılınca Σ x(k + n)x(k) = r_xx(n) çıkar.', 1, 'Hafta 4, Korelasyon', 1)
  ON CONFLICT(id) DO UPDATE SET topic_id = excluded.topic_id, week = excluded.week, type = excluded.type,
    source = excluded.source, prompt = excluded.prompt, payload = excluded.payload, answer = excluded.answer,
    explanation = excluded.explanation, difficulty = excluded.difficulty, source_ref = excluded.source_ref, active = 1
  WHERE questions.updated_at IS NULL;
INSERT INTO questions (id, topic_id, week, type, source, prompt, payload, answer, explanation, difficulty, source_ref, active)
VALUES ('h4-otokor-ustel', 'konvolusyon-uygulama', 4, 'num', 'original', '$x(n) = (0{,}5)^n u(n)$ dizisinin otokorelasyonunun n = 0 değeri kaçtır?', '{"blanks":1}', '{"blanks":[["4/3"]]}', 'r_xx(n) = a^|n|/(1 − a²). n = 0''da 1/(1 − 0,25) = 4/3 ≈ 1,333.', 3, 'Hafta 4, Korelasyon', 1)
  ON CONFLICT(id) DO UPDATE SET topic_id = excluded.topic_id, week = excluded.week, type = excluded.type,
    source = excluded.source, prompt = excluded.prompt, payload = excluded.payload, answer = excluded.answer,
    explanation = excluded.explanation, difficulty = excluded.difficulty, source_ref = excluded.source_ref, active = 1
  WHERE questions.updated_at IS NULL;
INSERT INTO questions (id, topic_id, week, type, source, prompt, payload, answer, explanation, difficulty, source_ref, active)
VALUES ('t1-adc-16bit', 'dsp-giris', 1, 'num', 'derived', '16 bitlik bir ses ADC''si kaç farklı seviye verir?', '{"blanks":1}', '{"blanks":[["65536"]]}', '$2^{16} = 65536$ seviye.', 1, 'Hafta 1, Örnekleme ve niceleme (ADC)', 1)
  ON CONFLICT(id) DO UPDATE SET topic_id = excluded.topic_id, week = excluded.week, type = excluded.type,
    source = excluded.source, prompt = excluded.prompt, payload = excluded.payload, answer = excluded.answer,
    explanation = excluded.explanation, difficulty = excluded.difficulty, source_ref = excluded.source_ref, active = 1
  WHERE questions.updated_at IS NULL;
INSERT INTO questions (id, topic_id, week, type, source, prompt, payload, answer, explanation, difficulty, source_ref, active)
VALUES ('t1-adc-fs', 'dsp-giris', 1, 'num', 'derived', 'Örnekleri 50 µs arayla alan bir ADC''nin örnekleme hızı kaç Hz''dir?', '{"blanks":1}', '{"blanks":[["20000"]]}', '$f_s = 1/T_s = 1 / (50 \cdot 10^{-6})$ = 20 000 Hz.', 1, 'Hafta 1, Örnekleme ve niceleme (ADC)', 1)
  ON CONFLICT(id) DO UPDATE SET topic_id = excluded.topic_id, week = excluded.week, type = excluded.type,
    source = excluded.source, prompt = excluded.prompt, payload = excluded.payload, answer = excluded.answer,
    explanation = excluded.explanation, difficulty = excluded.difficulty, source_ref = excluded.source_ref, active = 1
  WHERE questions.updated_at IS NULL;
INSERT INTO questions (id, topic_id, week, type, source, prompt, payload, answer, explanation, difficulty, source_ref, active)
VALUES ('t1-adc-bir-bit', 'dsp-giris', 1, 'mcq', 'derived', 'Bir ADC''ye bir bit daha eklenirse (ölçme aralığı aynı kalırsa) niceleme adımı ne olur?', '{"choices":["Yarıya iner","Bir azalır","İki katına çıkar","Değişmez"]}', '{"index":0}', 'Seviye sayısı $2^B$''den $2^{B+1}$''e, yani iki katına çıkar; aynı aralık iki kat seviyeye bölündüğü için adım yarıya iner.', 2, 'Hafta 1, Örnekleme ve niceleme (ADC)', 1)
  ON CONFLICT(id) DO UPDATE SET topic_id = excluded.topic_id, week = excluded.week, type = excluded.type,
    source = excluded.source, prompt = excluded.prompt, payload = excluded.payload, answer = excluded.answer,
    explanation = excluded.explanation, difficulty = excluded.difficulty, source_ref = excluded.source_ref, active = 1
  WHERE questions.updated_at IS NULL;
INSERT INTO questions (id, topic_id, week, type, source, prompt, payload, answer, explanation, difficulty, source_ref, active)
VALUES ('t1-adc-adim-12', 'dsp-giris', 1, 'num', 'derived', '0–4,096 V aralığında çalışan 12 bitlik bir ADC''nin niceleme adımı kaç mV''tur?', '{"blanks":1}', '{"blanks":[["1"]]}', '$2^{12} = 4096$ seviye; 4,096 V / 4096 = 1 mV.', 2, 'Hafta 1, Örnekleme ve niceleme (ADC)', 1)
  ON CONFLICT(id) DO UPDATE SET topic_id = excluded.topic_id, week = excluded.week, type = excluded.type,
    source = excluded.source, prompt = excluded.prompt, payload = excluded.payload, answer = excluded.answer,
    explanation = excluded.explanation, difficulty = excluded.difficulty, source_ref = excluded.source_ref, active = 1
  WHERE questions.updated_at IS NULL;
INSERT INTO questions (id, topic_id, week, type, source, prompt, payload, answer, explanation, difficulty, source_ref, active)
VALUES ('t1-alan-frekans', 'dsp-giris', 1, 'fill', 'derived', 'Yatay ekseni frekans olan bir sinyalin ____ alanında olduğu söylenir.', '{"blanks":1}', '{"blanks":[["frekans"]]}', 'Sinyalin alanı yatay eksendeki niceliktir; frekans eksenli sinyal frekans alanındadır.', 1, 'Hafta 1, Sinyal grafiğinin eksenleri ve alanı', 1)
  ON CONFLICT(id) DO UPDATE SET topic_id = excluded.topic_id, week = excluded.week, type = excluded.type,
    source = excluded.source, prompt = excluded.prompt, payload = excluded.payload, answer = excluded.answer,
    explanation = excluded.explanation, difficulty = excluded.difficulty, source_ref = excluded.source_ref, active = 1
  WHERE questions.updated_at IS NULL;
INSERT INTO questions (id, topic_id, week, type, source, prompt, payload, answer, explanation, difficulty, source_ref, active)
VALUES ('t1-bagimsiz', 'dsp-giris', 1, 'tf', 'derived', 'Bir sinyal grafiğinde bağımsız değişken her örneğin ne zaman ve nasıl alındığını, bağımlı değişken ise ölçülen değeri gösterir.', '{}', '{"value":true}', 'Doğru. Bu yüzden iki eksenin yeri değiştirilemez: genlik, bağımsız değişkenin bir fonksiyonudur.', 1, 'Hafta 1, Sinyal grafiğinin eksenleri ve alanı', 1)
  ON CONFLICT(id) DO UPDATE SET topic_id = excluded.topic_id, week = excluded.week, type = excluded.type,
    source = excluded.source, prompt = excluded.prompt, payload = excluded.payload, answer = excluded.answer,
    explanation = excluded.explanation, difficulty = excluded.difficulty, source_ref = excluded.source_ref, active = 1
  WHERE questions.updated_at IS NULL;
INSERT INTO questions (id, topic_id, week, type, source, prompt, payload, answer, explanation, difficulty, source_ref, active)
VALUES ('t1-ortalama-sapma-2', 'istatistik', 1, 'num', 'derived', 'x = [10 12 14] için μ ve (N − 1''li) σ''yı bul.

μ = ____ , σ = ____', '{"blanks":2}', '{"blanks":[["12"],["2"]]}', 'μ = 36/3 = 12. Sapmalar −2, 0, 2; kareler toplamı 8. σ² = 8/2 = 4, σ = 2.', 2, 'Hafta 1, Ortalama, standart sapma ve varyans', 1)
  ON CONFLICT(id) DO UPDATE SET topic_id = excluded.topic_id, week = excluded.week, type = excluded.type,
    source = excluded.source, prompt = excluded.prompt, payload = excluded.payload, answer = excluded.answer,
    explanation = excluded.explanation, difficulty = excluded.difficulty, source_ref = excluded.source_ref, active = 1
  WHERE questions.updated_at IS NULL;
INSERT INTO questions (id, topic_id, week, type, source, prompt, payload, answer, explanation, difficulty, source_ref, active)
VALUES ('t1-dc-eklemek', 'istatistik', 1, 'mcq', 'derived', 'Bir sinyalin her örneğine 5 eklenirse ortalaması ve standart sapması ne olur?', '{"choices":["Ortalama 5 artar, standart sapma değişmez","İkisi de 5 artar","Ortalama değişmez, standart sapma 5 artar","İkisi de değişmez"]}', '{"index":0}', 'Sabit eklemek bütün sinyali kaydırır: ortalama 5 artar ama örneklerin ortalamadan sapmaları aynı kalır, σ değişmez.', 1, 'Hafta 1, Ortalama, standart sapma ve varyans', 1)
  ON CONFLICT(id) DO UPDATE SET topic_id = excluded.topic_id, week = excluded.week, type = excluded.type,
    source = excluded.source, prompt = excluded.prompt, payload = excluded.payload, answer = excluded.answer,
    explanation = excluded.explanation, difficulty = excluded.difficulty, source_ref = excluded.source_ref, active = 1
  WHERE questions.updated_at IS NULL;
INSERT INTO questions (id, topic_id, week, type, source, prompt, payload, answer, explanation, difficulty, source_ref, active)
VALUES ('t1-olcek', 'istatistik', 1, 'num', 'derived', 'Standart sapması 0,4 V olan bir sinyal kazancı 3 olan bir yükselteçten geçiyor. Çıkışın standart sapması kaç volttur?', '{"blanks":1}', '{"blanks":[["1.2"]]}', 'Her örnek 3 ile çarpılınca sapmalar da 3 ile çarpılır: σ = 3 · 0,4 = 1,2 V. Varyans ise 9 katına çıkar.', 2, 'Hafta 1, Ortalama, standart sapma ve varyans', 1)
  ON CONFLICT(id) DO UPDATE SET topic_id = excluded.topic_id, week = excluded.week, type = excluded.type,
    source = excluded.source, prompt = excluded.prompt, payload = excluded.payload, answer = excluded.answer,
    explanation = excluded.explanation, difficulty = excluded.difficulty, source_ref = excluded.source_ref, active = 1
  WHERE questions.updated_at IS NULL;
INSERT INTO questions (id, topic_id, week, type, source, prompt, payload, answer, explanation, difficulty, source_ref, active)
VALUES ('t1-varyans-uc', 'istatistik', 1, 'num', 'derived', 'Birbirinden bağımsız üç gürültü kaynağının her birinin standart sapması 2 mV. Toplam gürültünün standart sapması kaç mV''tur?', '{"blanks":1}', '{"blanks":[["3.464±0.01"]]}', 'Varyanslar toplanır: 4 + 4 + 4 = 12; σ = √12 ≈ 3,46 mV.', 3, 'Hafta 1, Ortalama, standart sapma ve varyans', 1)
  ON CONFLICT(id) DO UPDATE SET topic_id = excluded.topic_id, week = excluded.week, type = excluded.type,
    source = excluded.source, prompt = excluded.prompt, payload = excluded.payload, answer = excluded.answer,
    explanation = excluded.explanation, difficulty = excluded.difficulty, source_ref = excluded.source_ref, active = 1
  WHERE questions.updated_at IS NULL;
INSERT INTO questions (id, topic_id, week, type, source, prompt, payload, answer, explanation, difficulty, source_ref, active)
VALUES ('t1-vp-vrms', 'istatistik', 1, 'num', 'derived', 'Prizdeki şebeke geriliminin rms değeri 220 V. Bu sinüsün tepe genliği yaklaşık kaç volttur?', '{"blanks":1}', '{"blanks":[["311±1"]]}', '$V_p = \sqrt{2}\,V_{rms} = 1{,}414 \cdot 220 \approx 311$ V.', 1, 'Hafta 1, rms ve tepeden tepeye değer', 1)
  ON CONFLICT(id) DO UPDATE SET topic_id = excluded.topic_id, week = excluded.week, type = excluded.type,
    source = excluded.source, prompt = excluded.prompt, payload = excluded.payload, answer = excluded.answer,
    explanation = excluded.explanation, difficulty = excluded.difficulty, source_ref = excluded.source_ref, active = 1
  WHERE questions.updated_at IS NULL;
INSERT INTO questions (id, topic_id, week, type, source, prompt, payload, answer, explanation, difficulty, source_ref, active)
VALUES ('t1-ucgen-vpp', 'istatistik', 1, 'num', 'derived', 'Ortalaması sıfır olan bir üçgen dalganın tepeden tepeye değeri 6 V. Standart sapması yaklaşık kaç volttur?', '{"blanks":1}', '{"blanks":[["1.732±0.01"]]}', 'Üçgende $V_{pp} = \sqrt{12}\,\sigma$, yani σ = 6 / 3,464 ≈ 1,73 V.', 2, 'Hafta 1, rms ve tepeden tepeye değer', 1)
  ON CONFLICT(id) DO UPDATE SET topic_id = excluded.topic_id, week = excluded.week, type = excluded.type,
    source = excluded.source, prompt = excluded.prompt, payload = excluded.payload, answer = excluded.answer,
    explanation = excluded.explanation, difficulty = excluded.difficulty, source_ref = excluded.source_ref, active = 1
  WHERE questions.updated_at IS NULL;
INSERT INTO questions (id, topic_id, week, type, source, prompt, payload, answer, explanation, difficulty, source_ref, active)
VALUES ('t1-rms-dc-sinus', 'istatistik', 1, 'num', 'derived', 'Tepe genliği 4 V olan bir sinüs 3 V''luk bir DC üzerine binmiş. Sinyalin rms değeri yaklaşık kaç volttur?', '{"blanks":1}', '{"blanks":[["4.123±0.01"]]}', 'AC kısmın σ''sı 4/√2 ≈ 2,83 V, varyansı 8. rms² = 3² + 8 = 17, rms ≈ 4,12 V.', 3, 'Hafta 1, rms ve tepeden tepeye değer', 1)
  ON CONFLICT(id) DO UPDATE SET topic_id = excluded.topic_id, week = excluded.week, type = excluded.type,
    source = excluded.source, prompt = excluded.prompt, payload = excluded.payload, answer = excluded.answer,
    explanation = excluded.explanation, difficulty = excluded.difficulty, source_ref = excluded.source_ref, active = 1
  WHERE questions.updated_at IS NULL;
INSERT INTO questions (id, topic_id, week, type, source, prompt, payload, answer, explanation, difficulty, source_ref, active)
VALUES ('t1-rms-hangi', 'istatistik', 1, 'mcq', 'derived', 'Hangi ölçü bir sinyalin hem DC hem AC kısmını hesaba katar?', '{"choices":["Standart sapma","Varyans","rms değeri","Tepeden tepeye değer"]}', '{"index":2}', 'rms karelerin ortalamasının kareköküdür; DC de karesiyle katkı verir. Standart sapma, varyans ve Vpp yalnızca dalgalanmayı ölçer.', 1, 'Hafta 1, rms ve tepeden tepeye değer', 1)
  ON CONFLICT(id) DO UPDATE SET topic_id = excluded.topic_id, week = excluded.week, type = excluded.type,
    source = excluded.source, prompt = excluded.prompt, payload = excluded.payload, answer = excluded.answer,
    explanation = excluded.explanation, difficulty = excluded.difficulty, source_ref = excluded.source_ref, active = 1
  WHERE questions.updated_at IS NULL;
INSERT INTO questions (id, topic_id, week, type, source, prompt, payload, answer, explanation, difficulty, source_ref, active)
VALUES ('t1-pmf-toplam', 'olasilik', 1, 'num', 'derived', 'Bir sinyalin pmf değerlerinin toplamı kaçtır?', '{"blanks":1}', '{"blanks":[["1"]]}', 'pmf, histogramın N''ye bölünmüş halidir: $\sum H_i / N = N/N = 1$.', 1, 'Hafta 1, Histogram, pmf, pdf ve kutulama', 1)
  ON CONFLICT(id) DO UPDATE SET topic_id = excluded.topic_id, week = excluded.week, type = excluded.type,
    source = excluded.source, prompt = excluded.prompt, payload = excluded.payload, answer = excluded.answer,
    explanation = excluded.explanation, difficulty = excluded.difficulty, source_ref = excluded.source_ref, active = 1
  WHERE questions.updated_at IS NULL;
INSERT INTO questions (id, topic_id, week, type, source, prompt, payload, answer, explanation, difficulty, source_ref, active)
VALUES ('t1-pmf-hist', 'olasilik', 1, 'num', 'derived', '2000 örneklik bir sinyalin histogramında $H_{37} = 50$. pmf''te 37 değerinin olasılığı nedir?', '{"blanks":1}', '{"blanks":[["0.025"]]}', 'pmf = H / N = 50 / 2000 = 0,025.', 2, 'Hafta 1, Histogram, pmf, pdf ve kutulama', 1)
  ON CONFLICT(id) DO UPDATE SET topic_id = excluded.topic_id, week = excluded.week, type = excluded.type,
    source = excluded.source, prompt = excluded.prompt, payload = excluded.payload, answer = excluded.answer,
    explanation = excluded.explanation, difficulty = excluded.difficulty, source_ref = excluded.source_ref, active = 1
  WHERE questions.updated_at IS NULL;
INSERT INTO questions (id, topic_id, week, type, source, prompt, payload, answer, explanation, difficulty, source_ref, active)
VALUES ('t1-pdf-buyuk', 'olasilik', 1, 'tf', 'derived', 'Bir pdf''in değeri hiçbir noktada 1''den büyük olamaz.', '{}', '{"value":false}', 'Yanlış. pdf olasılık değil olasılık yoğunluğudur. Çok dar bir dağılımda (örneğin σ = 0,1 olan Gauss''ta tepe ≈ 3,99) 1''den büyük olur; yalnızca altındaki toplam alan 1''dir.', 2, 'Hafta 1, Histogram, pmf, pdf ve kutulama', 1)
  ON CONFLICT(id) DO UPDATE SET topic_id = excluded.topic_id, week = excluded.week, type = excluded.type,
    source = excluded.source, prompt = excluded.prompt, payload = excluded.payload, answer = excluded.answer,
    explanation = excluded.explanation, difficulty = excluded.difficulty, source_ref = excluded.source_ref, active = 1
  WHERE questions.updated_at IS NULL;
INSERT INTO questions (id, topic_id, week, type, source, prompt, payload, answer, explanation, difficulty, source_ref, active)
VALUES ('t1-kutu-genislik', 'olasilik', 1, 'num', 'derived', '−1 ile 1 arasında değer alan kayan noktalı bir sinyal 400 kutulu bir histogramla sayılıyor. Kutu genişliği nedir?', '{"blanks":1}', '{"blanks":[["0.005"]]}', 'Aralık 2, kutu sayısı 400: genişlik 2 / 400 = 0,005.', 2, 'Hafta 1, Histogram, pmf, pdf ve kutulama', 1)
  ON CONFLICT(id) DO UPDATE SET topic_id = excluded.topic_id, week = excluded.week, type = excluded.type,
    source = excluded.source, prompt = excluded.prompt, payload = excluded.payload, answer = excluded.answer,
    explanation = excluded.explanation, difficulty = excluded.difficulty, source_ref = excluded.source_ref, active = 1
  WHERE questions.updated_at IS NULL;
INSERT INTO questions (id, topic_id, week, type, source, prompt, payload, answer, explanation, difficulty, source_ref, active)
VALUES ('t1-gauss-95', 'olasilik', 1, 'mcq', 'derived', 'Normal dağılımda örneklerin yaklaşık %95''i hangi aralıktadır?', '{"choices":["μ ± 0,5σ","μ ± 1σ","μ ± 2σ","μ ± 3σ"]}', '{"index":2}', '±1σ ≈ %68, ±2σ ≈ %95, ±3σ ≈ %99,7.', 1, 'Hafta 1, Normal dağılım', 1)
  ON CONFLICT(id) DO UPDATE SET topic_id = excluded.topic_id, week = excluded.week, type = excluded.type,
    source = excluded.source, prompt = excluded.prompt, payload = excluded.payload, answer = excluded.answer,
    explanation = excluded.explanation, difficulty = excluded.difficulty, source_ref = excluded.source_ref, active = 1
  WHERE questions.updated_at IS NULL;
INSERT INTO questions (id, topic_id, week, type, source, prompt, payload, answer, explanation, difficulty, source_ref, active)
VALUES ('t1-gauss-disari', 'olasilik', 1, 'num', 'derived', 'μ = 0, σ = 1 V olan Gauss gürültünün örneklerinin yaklaşık yüzde kaçı 2 V''tan büyüktür?', '{"blanks":1}', '{"blanks":[["2.5±0.3"]]}', '±2σ dışında %5 kalır ve dağılım simetrik olduğu için bunun yarısı, yaklaşık %2,5''i, +2σ''nın üstündedir.', 3, 'Hafta 1, Normal dağılım', 1)
  ON CONFLICT(id) DO UPDATE SET topic_id = excluded.topic_id, week = excluded.week, type = excluded.type,
    source = excluded.source, prompt = excluded.prompt, payload = excluded.payload, answer = excluded.answer,
    explanation = excluded.explanation, difficulty = excluded.difficulty, source_ref = excluded.source_ref, active = 1
  WHERE questions.updated_at IS NULL;
INSERT INTO questions (id, topic_id, week, type, source, prompt, payload, answer, explanation, difficulty, source_ref, active)
VALUES ('t1-rnd-dort', 'gurultu-dogruluk', 1, 'num', 'derived', 'Dört RND''nin (0–1 arası düzgün) toplamının ortalamasını ve standart sapmasını bul.

μ = ____ , σ = ____', '{"blanks":2}', '{"blanks":[["2"],["0.577±0.005"]]}', 'Ortalamalar ve varyanslar toplanır: μ = 4 · 0,5 = 2, σ² = 4/12 = 1/3, σ ≈ 0,577.', 2, 'Hafta 1, Rastgele sayılarla gürültü üretimi', 1)
  ON CONFLICT(id) DO UPDATE SET topic_id = excluded.topic_id, week = excluded.week, type = excluded.type,
    source = excluded.source, prompt = excluded.prompt, payload = excluded.payload, answer = excluded.answer,
    explanation = excluded.explanation, difficulty = excluded.difficulty, source_ref = excluded.source_ref, active = 1
  WHERE questions.updated_at IS NULL;
INSERT INTO questions (id, topic_id, week, type, source, prompt, payload, answer, explanation, difficulty, source_ref, active)
VALUES ('t1-rnd-ortalama', 'gurultu-dogruluk', 1, 'num', 'derived', '0 ile 1 arasında düzgün dağılımlı rastgele sayıların ortalaması kaçtır?', '{"blanks":1}', '{"blanks":[["0.5"]]}', 'Düzgün dağılımın ortalaması aralığın ortasıdır: 0,5.', 1, 'Hafta 1, Rastgele sayılarla gürültü üretimi', 1)
  ON CONFLICT(id) DO UPDATE SET topic_id = excluded.topic_id, week = excluded.week, type = excluded.type,
    source = excluded.source, prompt = excluded.prompt, payload = excluded.payload, answer = excluded.answer,
    explanation = excluded.explanation, difficulty = excluded.difficulty, source_ref = excluded.source_ref, active = 1
  WHERE questions.updated_at IS NULL;
INSERT INTO questions (id, topic_id, week, type, source, prompt, payload, answer, explanation, difficulty, source_ref, active)
VALUES ('t1-kesin-dogru-degil', 'gurultu-dogruluk', 1, 'mcq', 'derived', 'Bir termometre 25,0 °C''lik suyu on kez ölçüp her seferinde 26,9 ile 27,1 °C arasında bir değer gösteriyor. Termometre için ne söylenir?', '{"choices":["Kesin ama doğru değil","Doğru ama kesin değil","Hem kesin hem doğru","Ne kesin ne doğru"]}', '{"index":0}', 'Ölçümler birbirine çok yakın (kesinlik iyi) ama ortalama gerçek değerden 2 °C uzak (doğruluk kötü). Çare kalibrasyon.', 2, 'Hafta 1, Kesinlik ve doğruluk', 1)
  ON CONFLICT(id) DO UPDATE SET topic_id = excluded.topic_id, week = excluded.week, type = excluded.type,
    source = excluded.source, prompt = excluded.prompt, payload = excluded.payload, answer = excluded.answer,
    explanation = excluded.explanation, difficulty = excluded.difficulty, source_ref = excluded.source_ref, active = 1
  WHERE questions.updated_at IS NULL;
INSERT INTO questions (id, topic_id, week, type, source, prompt, payload, answer, explanation, difficulty, source_ref, active)
VALUES ('t1-ortalama-n', 'gurultu-dogruluk', 1, 'num', 'derived', 'Tek bir ölçümün rastgele hatası (σ) 8 mm. 16 ölçümün ortalamasının rastgele hatası kaç mm olur?', '{"blanks":1}', '{"blanks":[["2"]]}', 'N ölçümün ortalamasının rastgele hatası √N kat küçülür: 8 / √16 = 2 mm.', 3, 'Hafta 1, Kesinlik ve doğruluk', 1)
  ON CONFLICT(id) DO UPDATE SET topic_id = excluded.topic_id, week = excluded.week, type = excluded.type,
    source = excluded.source, prompt = excluded.prompt, payload = excluded.payload, answer = excluded.answer,
    explanation = excluded.explanation, difficulty = excluded.difficulty, source_ref = excluded.source_ref, active = 1
  WHERE questions.updated_at IS NULL;
INSERT INTO questions (id, topic_id, week, type, source, prompt, payload, answer, explanation, difficulty, source_ref, active)
VALUES ('t2-inf', 'matlab-temel', 2, 'fill', 'derived', 'MATLAB''da `1/0` işleminin sonucu nedir?', '{"blanks":1}', '{"blanks":[["Inf"]]}', 'Sıfıra bölme sonsuzluk verir: `Inf`. `0/0` ise `NaN`''dır.', 1, 'Hafta 2, MATLAB betikleri, çıktı ve özel değerler', 1)
  ON CONFLICT(id) DO UPDATE SET topic_id = excluded.topic_id, week = excluded.week, type = excluded.type,
    source = excluded.source, prompt = excluded.prompt, payload = excluded.payload, answer = excluded.answer,
    explanation = excluded.explanation, difficulty = excluded.difficulty, source_ref = excluded.source_ref, active = 1
  WHERE questions.updated_at IS NULL;
INSERT INTO questions (id, topic_id, week, type, source, prompt, payload, answer, explanation, difficulty, source_ref, active)
VALUES ('t2-i-degisken', 'matlab-temel', 2, 'num', 'derived', 'Aşağıdaki betikten sonra `z` kaçtır?

```matlab
i = 5;
z = 2 + 3*i;
```', '{"blanks":1}', '{"blanks":[["17"]]}', '`i` artık 5 değerli bir değişkendir; `3*i` = 15 ve z = 17. Karmaşık sayı için `3i` ya da `1j` yazılmalıdır.', 2, 'Hafta 2, MATLAB betikleri, çıktı ve özel değerler', 1)
  ON CONFLICT(id) DO UPDATE SET topic_id = excluded.topic_id, week = excluded.week, type = excluded.type,
    source = excluded.source, prompt = excluded.prompt, payload = excluded.payload, answer = excluded.answer,
    explanation = excluded.explanation, difficulty = excluded.difficulty, source_ref = excluded.source_ref, active = 1
  WHERE questions.updated_at IS NULL;
INSERT INTO questions (id, topic_id, week, type, source, prompt, payload, answer, explanation, difficulty, source_ref, active)
VALUES ('t2-linspace-2', 'matlab-temel', 2, 'num', 'derived', '`linspace(-1, 1, 3)` nedir?', '{"blanks":1}', '{"blanks":[["[-1 0 1]"]]}', '−1 ile 1 dahil 3 eşit aralıklı değer: aralık 1.', 1, 'Hafta 2, Vektör oluşturma: aralık ve linspace', 1)
  ON CONFLICT(id) DO UPDATE SET topic_id = excluded.topic_id, week = excluded.week, type = excluded.type,
    source = excluded.source, prompt = excluded.prompt, payload = excluded.payload, answer = excluded.answer,
    explanation = excluded.explanation, difficulty = excluded.difficulty, source_ref = excluded.source_ref, active = 1
  WHERE questions.updated_at IS NULL;
INSERT INTO questions (id, topic_id, week, type, source, prompt, payload, answer, explanation, difficulty, source_ref, active)
VALUES ('t2-aralik-2', 'matlab-temel', 2, 'num', 'derived', '`5:5:22` komutunun ürettiği vektörü yaz.', '{"blanks":1}', '{"blanks":[["[5 10 15 20]"]]}', '5''ten başlayıp 5''er artar; 25 sınırı (22) aştığı için alınmaz.', 1, 'Hafta 2, Vektör oluşturma: aralık ve linspace', 1)
  ON CONFLICT(id) DO UPDATE SET topic_id = excluded.topic_id, week = excluded.week, type = excluded.type,
    source = excluded.source, prompt = excluded.prompt, payload = excluded.payload, answer = excluded.answer,
    explanation = excluded.explanation, difficulty = excluded.difficulty, source_ref = excluded.source_ref, active = 1
  WHERE questions.updated_at IS NULL;
INSERT INTO questions (id, topic_id, week, type, source, prompt, payload, answer, explanation, difficulty, source_ref, active)
VALUES ('t2-aralik-uzunluk-2', 'matlab-temel', 2, 'num', 'derived', '`length(-1:0.1:1)` kaçtır?', '{"blanks":1}', '{"blanks":[["21"]]}', '(1 − (−1))/0,1 + 1 = 21 eleman.', 2, 'Hafta 2, Vektör oluşturma: aralık ve linspace', 1)
  ON CONFLICT(id) DO UPDATE SET topic_id = excluded.topic_id, week = excluded.week, type = excluded.type,
    source = excluded.source, prompt = excluded.prompt, payload = excluded.payload, answer = excluded.answer,
    explanation = excluded.explanation, difficulty = excluded.difficulty, source_ref = excluded.source_ref, active = 1
  WHERE questions.updated_at IS NULL;
INSERT INTO questions (id, topic_id, week, type, source, prompt, payload, answer, explanation, difficulty, source_ref, active)
VALUES ('t2-ters', 'matlab-temel', 2, 'num', 'derived', '`v = [3 6 9 12];` için `v(end:-1:1)` nedir?', '{"blanks":1}', '{"blanks":[["[12 9 6 3]"]]}', 'Adım −1: sondan başa doğru ters çevrilir.', 1, 'Hafta 2, Vektör indeksleme', 1)
  ON CONFLICT(id) DO UPDATE SET topic_id = excluded.topic_id, week = excluded.week, type = excluded.type,
    source = excluded.source, prompt = excluded.prompt, payload = excluded.payload, answer = excluded.answer,
    explanation = excluded.explanation, difficulty = excluded.difficulty, source_ref = excluded.source_ref, active = 1
  WHERE questions.updated_at IS NULL;
INSERT INTO questions (id, topic_id, week, type, source, prompt, payload, answer, explanation, difficulty, source_ref, active)
VALUES ('t2-indis-vektor', 'matlab-temel', 2, 'num', 'derived', '`v = [10 20 30 40];` için `v([4 1 1])` nedir?', '{"blanks":1}', '{"blanks":[["[40 10 10]"]]}', 'İndis vektörü sırasıyla 4., 1. ve yine 1. elemanı alır.', 2, 'Hafta 2, Vektör indeksleme', 1)
  ON CONFLICT(id) DO UPDATE SET topic_id = excluded.topic_id, week = excluded.week, type = excluded.type,
    source = excluded.source, prompt = excluded.prompt, payload = excluded.payload, answer = excluded.answer,
    explanation = excluded.explanation, difficulty = excluded.difficulty, source_ref = excluded.source_ref, active = 1
  WHERE questions.updated_at IS NULL;
INSERT INTO questions (id, topic_id, week, type, source, prompt, payload, answer, explanation, difficulty, source_ref, active)
VALUES ('t2-sutun', 'matlab-matris', 2, 'num', 'derived', '`A = [1 5 9; 2 6 10];` için `A(:, 2)` nedir? (sütun vektörünü satır gibi yazabilirsin)', '{"blanks":1}', '{"blanks":[["[5 6]"]]}', '`A(:, 2)` 2. sütunun bütün satırlarıdır: 5 ve 6.', 1, 'Hafta 2, Matris indeksleme ve doğrusal indeks', 1)
  ON CONFLICT(id) DO UPDATE SET topic_id = excluded.topic_id, week = excluded.week, type = excluded.type,
    source = excluded.source, prompt = excluded.prompt, payload = excluded.payload, answer = excluded.answer,
    explanation = excluded.explanation, difficulty = excluded.difficulty, source_ref = excluded.source_ref, active = 1
  WHERE questions.updated_at IS NULL;
INSERT INTO questions (id, topic_id, week, type, source, prompt, payload, answer, explanation, difficulty, source_ref, active)
VALUES ('t2-dogrusal-2', 'matlab-matris', 2, 'num', 'derived', '`A = [1 5 9; 2 6 10];` için `A(5)` kaçtır?', '{"blanks":1}', '{"blanks":[["9"]]}', 'Sütun sırası: 1, 2, 5, 6, 9, 10. Beşinci eleman 9.', 2, 'Hafta 2, Matris indeksleme ve doğrusal indeks', 1)
  ON CONFLICT(id) DO UPDATE SET topic_id = excluded.topic_id, week = excluded.week, type = excluded.type,
    source = excluded.source, prompt = excluded.prompt, payload = excluded.payload, answer = excluded.answer,
    explanation = excluded.explanation, difficulty = excluded.difficulty, source_ref = excluded.source_ref, active = 1
  WHERE questions.updated_at IS NULL;
INSERT INTO questions (id, topic_id, week, type, source, prompt, payload, answer, explanation, difficulty, source_ref, active)
VALUES ('t2-bolme', 'matlab-matris', 2, 'num', 'derived', '`[8 6 4] ./ [2 3 4]` nedir?', '{"blanks":1}', '{"blanks":[["[4 2 1]"]]}', 'Eleman eleman bölme: 8/2, 6/3, 4/4.', 1, 'Hafta 2, Eleman eleman ve matris işlemleri', 1)
  ON CONFLICT(id) DO UPDATE SET topic_id = excluded.topic_id, week = excluded.week, type = excluded.type,
    source = excluded.source, prompt = excluded.prompt, payload = excluded.payload, answer = excluded.answer,
    explanation = excluded.explanation, difficulty = excluded.difficulty, source_ref = excluded.source_ref, active = 1
  WHERE questions.updated_at IS NULL;
INSERT INTO questions (id, topic_id, week, type, source, prompt, payload, answer, explanation, difficulty, source_ref, active)
VALUES ('t2-ic-carpim', 'matlab-matris', 2, 'num', 'derived', '`[1 2 3] * [4; 5; 6]` kaçtır?', '{"blanks":1}', '{"blanks":[["32"]]}', '1×3 ile 3×1''in matris çarpımı tek sayıdır: 1·4 + 2·5 + 3·6 = 32.', 2, 'Hafta 2, Eleman eleman ve matris işlemleri', 1)
  ON CONFLICT(id) DO UPDATE SET topic_id = excluded.topic_id, week = excluded.week, type = excluded.type,
    source = excluded.source, prompt = excluded.prompt, payload = excluded.payload, answer = excluded.answer,
    explanation = excluded.explanation, difficulty = excluded.difficulty, source_ref = excluded.source_ref, active = 1
  WHERE questions.updated_at IS NULL;
INSERT INTO questions (id, topic_id, week, type, source, prompt, payload, answer, explanation, difficulty, source_ref, active)
VALUES ('t2-boyut-hata', 'matlab-matris', 2, 'mcq', 'derived', '`[1 2 3] * [4 5 6]` yazılınca ne olur?', '{"choices":["Hata verir: iç boyutlar uyuşmuyor","[4 10 18] döner","32 döner","3×3''lük bir matris döner"]}', '{"index":0}', '1×3 ile 1×3 matris çarpımına giremez (A''nın sütun sayısı 3, B''nin satır sayısı 1). Eleman eleman çarpım için `.*` gerekir.', 2, 'Hafta 2, Eleman eleman ve matris işlemleri', 1)
  ON CONFLICT(id) DO UPDATE SET topic_id = excluded.topic_id, week = excluded.week, type = excluded.type,
    source = excluded.source, prompt = excluded.prompt, payload = excluded.payload, answer = excluded.answer,
    explanation = excluded.explanation, difficulty = excluded.difficulty, source_ref = excluded.source_ref, active = 1
  WHERE questions.updated_at IS NULL;
INSERT INTO questions (id, topic_id, week, type, source, prompt, payload, answer, explanation, difficulty, source_ref, active)
VALUES ('t2-sifirla', 'matlab-fonksiyon', 2, 'num', 'derived', '`x = [3 -2 5 -1];` ve ardından `x(x < 0) = 0;` çalıştırılınca `x` nedir?', '{"blanks":1}', '{"blanks":[["[3 0 5 0]"]]}', 'Mantıksal indeksle yapılan atama yalnızca koşulu sağlayan (negatif) elemanları değiştirir.', 2, 'Hafta 2, İlişkisel ve mantıksal işleçler', 1)
  ON CONFLICT(id) DO UPDATE SET topic_id = excluded.topic_id, week = excluded.week, type = excluded.type,
    source = excluded.source, prompt = excluded.prompt, payload = excluded.payload, answer = excluded.answer,
    explanation = excluded.explanation, difficulty = excluded.difficulty, source_ref = excluded.source_ref, active = 1
  WHERE questions.updated_at IS NULL;
INSERT INTO questions (id, topic_id, week, type, source, prompt, payload, answer, explanation, difficulty, source_ref, active)
VALUES ('t2-veya-sayma', 'matlab-fonksiyon', 2, 'num', 'derived', '`x = [1 6 2 8 4];` için `sum(x < 2 | x > 5)` kaçtır?', '{"blanks":1}', '{"blanks":[["3"]]}', '2''den küçük (1) ya da 5''ten büyük (6, 8) elemanlar: 3 tane.', 2, 'Hafta 2, İlişkisel ve mantıksal işleçler', 1)
  ON CONFLICT(id) DO UPDATE SET topic_id = excluded.topic_id, week = excluded.week, type = excluded.type,
    source = excluded.source, prompt = excluded.prompt, payload = excluded.payload, answer = excluded.answer,
    explanation = excluded.explanation, difficulty = excluded.difficulty, source_ref = excluded.source_ref, active = 1
  WHERE questions.updated_at IS NULL;
INSERT INTO questions (id, topic_id, week, type, source, prompt, payload, answer, explanation, difficulty, source_ref, active)
VALUES ('t2-tek-cikis', 'matlab-fonksiyon', 2, 'num', 'derived', '`function [a, b] = ikisi(x)` fonksiyonu `a = 2*x; b = x^2;` hesaplıyor. `r = ikisi(4)` çağrısından sonra `r` kaçtır?', '{"blanks":1}', '{"blanks":[["8"]]}', 'Tek değişkenle çağrılınca yalnızca ilk çıkış alınır: a = 2·4 = 8.', 2, 'Hafta 2, MATLAB''da fonksiyon yazmak', 1)
  ON CONFLICT(id) DO UPDATE SET topic_id = excluded.topic_id, week = excluded.week, type = excluded.type,
    source = excluded.source, prompt = excluded.prompt, payload = excluded.payload, answer = excluded.answer,
    explanation = excluded.explanation, difficulty = excluded.difficulty, source_ref = excluded.source_ref, active = 1
  WHERE questions.updated_at IS NULL;
INSERT INTO questions (id, topic_id, week, type, source, prompt, payload, answer, explanation, difficulty, source_ref, active)
VALUES ('t2-rand-kare', 'matlab-fonksiyon', 2, 'num', 'derived', '`rand(4)` kaç elemanlı bir matris üretir?', '{"blanks":1}', '{"blanks":[["16"]]}', 'Tek argüman kare matris demektir: 4×4 = 16 eleman.', 1, 'Hafta 2, rand, randn, randi ve randperm', 1)
  ON CONFLICT(id) DO UPDATE SET topic_id = excluded.topic_id, week = excluded.week, type = excluded.type,
    source = excluded.source, prompt = excluded.prompt, payload = excluded.payload, answer = excluded.answer,
    explanation = excluded.explanation, difficulty = excluded.difficulty, source_ref = excluded.source_ref, active = 1
  WHERE questions.updated_at IS NULL;
INSERT INTO questions (id, topic_id, week, type, source, prompt, payload, answer, explanation, difficulty, source_ref, active)
VALUES ('t2-randn-olcek', 'matlab-fonksiyon', 2, 'mcq', 'derived', 'Ortalaması 3, standart sapması 0,5 olan N normal sayı hangi ifadeyle üretilir?', '{"choices":["3 + 0.5*randn(1, N)","0.5 + 3*randn(1, N)","3*randn(1, N) + 0.5","3 + 0.5*rand(1, N)"]}', '{"index":0}', 'μ + σ·randn: önce standart sapmayla ölçekle, sonra ortalamayı ekle. `rand` düzgün dağılım verir.', 2, 'Hafta 2, rand, randn, randi ve randperm', 1)
  ON CONFLICT(id) DO UPDATE SET topic_id = excluded.topic_id, week = excluded.week, type = excluded.type,
    source = excluded.source, prompt = excluded.prompt, payload = excluded.payload, answer = excluded.answer,
    explanation = excluded.explanation, difficulty = excluded.difficulty, source_ref = excluded.source_ref, active = 1
  WHERE questions.updated_at IS NULL;
INSERT INTO questions (id, topic_id, week, type, source, prompt, payload, answer, explanation, difficulty, source_ref, active)
VALUES ('t2-yatay-boyut', 'matlab-istatistik', 2, 'num', 'derived', '`size([ones(3, 2), zeros(3, 4)])` nedir?', '{"blanks":1}', '{"blanks":[["[3 6]"]]}', 'Yan yana birleştirmede sütunlar toplanır: 2 + 4 = 6; satır 3 kalır.', 1, 'Hafta 2, Dizi birleştirme', 1)
  ON CONFLICT(id) DO UPDATE SET topic_id = excluded.topic_id, week = excluded.week, type = excluded.type,
    source = excluded.source, prompt = excluded.prompt, payload = excluded.payload, answer = excluded.answer,
    explanation = excluded.explanation, difficulty = excluded.difficulty, source_ref = excluded.source_ref, active = 1
  WHERE questions.updated_at IS NULL;
INSERT INTO questions (id, topic_id, week, type, source, prompt, payload, answer, explanation, difficulty, source_ref, active)
VALUES ('t2-sifir-ekle', 'matlab-istatistik', 2, 'num', 'derived', '`x = [1 2 3]; y = [x, zeros(1, 2)];` için `y` nedir?', '{"blanks":1}', '{"blanks":[["[1 2 3 0 0]"]]}', 'x''in sonuna iki sıfır eklenir (sıfır doldurma).', 1, 'Hafta 2, Dizi birleştirme', 1)
  ON CONFLICT(id) DO UPDATE SET topic_id = excluded.topic_id, week = excluded.week, type = excluded.type,
    source = excluded.source, prompt = excluded.prompt, payload = excluded.payload, answer = excluded.answer,
    explanation = excluded.explanation, difficulty = excluded.difficulty, source_ref = excluded.source_ref, active = 1
  WHERE questions.updated_at IS NULL;
INSERT INTO questions (id, topic_id, week, type, source, prompt, payload, answer, explanation, difficulty, source_ref, active)
VALUES ('t2-mean-satir', 'matlab-istatistik', 2, 'num', 'derived', '`A = [2 4; 6 8; 1 3];` için `mean(A, 2)` nedir? (sütun vektörünü satır gibi yazabilirsin)', '{"blanks":1}', '{"blanks":[["[3 7 2]"]]}', 'Boyut 2 her satırın ortalamasıdır: (2+4)/2, (6+8)/2, (1+3)/2.', 2, 'Hafta 2, İstatistik fonksiyonları ve boyut', 1)
  ON CONFLICT(id) DO UPDATE SET topic_id = excluded.topic_id, week = excluded.week, type = excluded.type,
    source = excluded.source, prompt = excluded.prompt, payload = excluded.payload, answer = excluded.answer,
    explanation = excluded.explanation, difficulty = excluded.difficulty, source_ref = excluded.source_ref, active = 1
  WHERE questions.updated_at IS NULL;
INSERT INTO questions (id, topic_id, week, type, source, prompt, payload, answer, explanation, difficulty, source_ref, active)
VALUES ('t2-median-tek', 'matlab-istatistik', 2, 'num', 'derived', '`median([9 2 5 1 7])` kaçtır?', '{"blanks":1}', '{"blanks":[["5"]]}', 'Sıralı: 1, 2, 5, 7, 9; tek sayıda elemanda ortadaki 5''tir.', 1, 'Hafta 2, İstatistik fonksiyonları ve boyut', 1)
  ON CONFLICT(id) DO UPDATE SET topic_id = excluded.topic_id, week = excluded.week, type = excluded.type,
    source = excluded.source, prompt = excluded.prompt, payload = excluded.payload, answer = excluded.answer,
    explanation = excluded.explanation, difficulty = excluded.difficulty, source_ref = excluded.source_ref, active = 1
  WHERE questions.updated_at IS NULL;
INSERT INTO questions (id, topic_id, week, type, source, prompt, payload, answer, explanation, difficulty, source_ref, active)
VALUES ('t2-var-pop', 'matlab-istatistik', 2, 'num', 'derived', '`var([2 4 6], 1)` kaçtır?', '{"blanks":1}', '{"blanks":[["2.6667±0.001","8/3"]]}', 'Ağırlık 1: N''ye böl. Ortalama 4, kareli sapmalar 4 + 0 + 4 = 8; 8/3 ≈ 2,667.', 2, 'Hafta 2, İstatistik fonksiyonları ve boyut', 1)
  ON CONFLICT(id) DO UPDATE SET topic_id = excluded.topic_id, week = excluded.week, type = excluded.type,
    source = excluded.source, prompt = excluded.prompt, payload = excluded.payload, answer = excluded.answer,
    explanation = excluded.explanation, difficulty = excluded.difficulty, source_ref = excluded.source_ref, active = 1
  WHERE questions.updated_at IS NULL;
INSERT INTO questions (id, topic_id, week, type, source, prompt, payload, answer, explanation, difficulty, source_ref, active)
VALUES ('t2-corr-sifir', 'matlab-istatistik', 2, 'tf', 'derived', 'corrcoef(A) ile bulunan katsayı matrisinin köşegenindeki elemanlar her zaman 1''dir.', '{}', '{"value":true}', 'Doğru. Köşegen her değişkenin kendisiyle korelasyonudur ve 1''dir; matris simetriktir.', 2, 'Hafta 2, İstatistik fonksiyonları ve boyut', 1)
  ON CONFLICT(id) DO UPDATE SET topic_id = excluded.topic_id, week = excluded.week, type = excluded.type,
    source = excluded.source, prompt = excluded.prompt, payload = excluded.payload, answer = excluded.answer,
    explanation = excluded.explanation, difficulty = excluded.difficulty, source_ref = excluded.source_ref, active = 1
  WHERE questions.updated_at IS NULL;
INSERT INTO questions (id, topic_id, week, type, source, prompt, payload, answer, explanation, difficulty, source_ref, active)
VALUES ('t3-pencere', 'ayrik-diziler', 3, 'num', 'derived', 'u(n + 1) − u(n − 4) dizisi kaç örnekte 1 değerini alır?', '{"blanks":1}', '{"blanks":[["5"]]}', 'u(n + 1) n ≥ −1''de, u(n − 4) n ≥ 4''te 1''dir. Fark −1 ≤ n ≤ 3''te 1: beş örnek.', 2, 'Hafta 3, Birim dürtü, basamak ve rampa', 1)
  ON CONFLICT(id) DO UPDATE SET topic_id = excluded.topic_id, week = excluded.week, type = excluded.type,
    source = excluded.source, prompt = excluded.prompt, payload = excluded.payload, answer = excluded.answer,
    explanation = excluded.explanation, difficulty = excluded.difficulty, source_ref = excluded.source_ref, active = 1
  WHERE questions.updated_at IS NULL;
INSERT INTO questions (id, topic_id, week, type, source, prompt, payload, answer, explanation, difficulty, source_ref, active)
VALUES ('t3-durtu-toplam-2', 'ayrik-diziler', 3, 'num', 'derived', '$\displaystyle\sum_{n=-\infty}^{\infty} (2n + 1)\,\delta(n + 2)$ kaçtır?', '{"blanks":1}', '{"blanks":[["-3"]]}', 'Yalnızca n = −2 terimi kalır: 2·(−2) + 1 = −3.', 2, 'Hafta 3, Birim dürtü, basamak ve rampa', 1)
  ON CONFLICT(id) DO UPDATE SET topic_id = excluded.topic_id, week = excluded.week, type = excluded.type,
    source = excluded.source, prompt = excluded.prompt, payload = excluded.payload, answer = excluded.answer,
    explanation = excluded.explanation, difficulty = excluded.difficulty, source_ref = excluded.source_ref, active = 1
  WHERE questions.updated_at IS NULL;
INSERT INTO questions (id, topic_id, week, type, source, prompt, payload, answer, explanation, difficulty, source_ref, active)
VALUES ('t3-basamak-deger', 'ayrik-diziler', 3, 'num', 'derived', 'u(n − 3) dizisinin n = 2''deki ve n = 3''teki değerleri nedir?

n = 2: ____ , n = 3: ____', '{"blanks":2}', '{"blanks":[["0"],["1"]]}', 'u(n − 3), n − 3 ≥ 0, yani n ≥ 3 için 1''dir.', 1, 'Hafta 3, Birim dürtü, basamak ve rampa', 1)
  ON CONFLICT(id) DO UPDATE SET topic_id = excluded.topic_id, week = excluded.week, type = excluded.type,
    source = excluded.source, prompt = excluded.prompt, payload = excluded.payload, answer = excluded.answer,
    explanation = excluded.explanation, difficulty = excluded.difficulty, source_ref = excluded.source_ref, active = 1
  WHERE questions.updated_at IS NULL;
INSERT INTO questions (id, topic_id, week, type, source, prompt, payload, answer, explanation, difficulty, source_ref, active)
VALUES ('t3-ustel-buyur', 'ayrik-diziler', 3, 'mcq', 'derived', '$x(n) = (1{,}2)^n u(n)$ dizisi nasıl davranır?', '{"choices":["İşareti değişmeden büyür","İşareti değişmeden söner","İşareti değişerek büyür","Sabit kalır"]}', '{"index":0}', 'a = 1,2 > 1: dizi büyür; a pozitif olduğu için işaret değişmez.', 1, 'Hafta 3, Üstel ve karmaşık üstel diziler', 1)
  ON CONFLICT(id) DO UPDATE SET topic_id = excluded.topic_id, week = excluded.week, type = excluded.type,
    source = excluded.source, prompt = excluded.prompt, payload = excluded.payload, answer = excluded.answer,
    explanation = excluded.explanation, difficulty = excluded.difficulty, source_ref = excluded.source_ref, active = 1
  WHERE questions.updated_at IS NULL;
INSERT INTO questions (id, topic_id, week, type, source, prompt, payload, answer, explanation, difficulty, source_ref, active)
VALUES ('t3-sinus-faz', 'ayrik-diziler', 3, 'num', 'derived', '$x(n) = 4\cos(\pi n/2 + \pi/3)$ dizisinin x(0) değeri kaçtır?', '{"blanks":1}', '{"blanks":[["2"]]}', 'x(0) = 4·cos(π/3) = 4·0,5 = 2.', 2, 'Hafta 3, Üstel ve karmaşık üstel diziler', 1)
  ON CONFLICT(id) DO UPDATE SET topic_id = excluded.topic_id, week = excluded.week, type = excluded.type,
    source = excluded.source, prompt = excluded.prompt, payload = excluded.payload, answer = excluded.answer,
    explanation = excluded.explanation, difficulty = excluded.difficulty, source_ref = excluded.source_ref, active = 1
  WHERE questions.updated_at IS NULL;
INSERT INTO questions (id, topic_id, week, type, source, prompt, payload, answer, explanation, difficulty, source_ref, active)
VALUES ('t3-periyot-2', 'ayrik-diziler', 3, 'num', 'derived', '$x(n) = \sin(\pi n / 4)$ dizisinin temel periyodu kaçtır?', '{"blanks":1}', '{"blanks":[["8"]]}', '$N = 2\pi / (\pi/4) = 8$.', 1, 'Hafta 3, Ayrık sinüslerde periyodiklik', 1)
  ON CONFLICT(id) DO UPDATE SET topic_id = excluded.topic_id, week = excluded.week, type = excluded.type,
    source = excluded.source, prompt = excluded.prompt, payload = excluded.payload, answer = excluded.answer,
    explanation = excluded.explanation, difficulty = excluded.difficulty, source_ref = excluded.source_ref, active = 1
  WHERE questions.updated_at IS NULL;
INSERT INTO questions (id, topic_id, week, type, source, prompt, payload, answer, explanation, difficulty, source_ref, active)
VALUES ('t3-periyot-ekok', 'ayrik-diziler', 3, 'num', 'derived', '$x(n) = \cos(\pi n / 5) + \cos(\pi n / 2)$ dizisinin temel periyodu kaçtır?', '{"blanks":1}', '{"blanks":[["20"]]}', '$N_1 = 10$, $N_2 = 4$; ekok(10, 4) = 20.', 2, 'Hafta 3, Ayrık sinüslerde periyodiklik', 1)
  ON CONFLICT(id) DO UPDATE SET topic_id = excluded.topic_id, week = excluded.week, type = excluded.type,
    source = excluded.source, prompt = excluded.prompt, payload = excluded.payload, answer = excluded.answer,
    explanation = excluded.explanation, difficulty = excluded.difficulty, source_ref = excluded.source_ref, active = 1
  WHERE questions.updated_at IS NULL;
INSERT INTO questions (id, topic_id, week, type, source, prompt, payload, answer, explanation, difficulty, source_ref, active)
VALUES ('t3-periyot-k-2', 'ayrik-diziler', 3, 'num', 'derived', '$x(n) = \cos(0{,}4\pi n)$ dizisinin temel periyodu kaçtır?', '{"blanks":1}', '{"blanks":[["5"]]}', '$N = 2\pi k / 0{,}4\pi = 5k$; k = 1 ile N = 5.', 3, 'Hafta 3, Ayrık sinüslerde periyodiklik', 1)
  ON CONFLICT(id) DO UPDATE SET topic_id = excluded.topic_id, week = excluded.week, type = excluded.type,
    source = excluded.source, prompt = excluded.prompt, payload = excluded.payload, answer = excluded.answer,
    explanation = excluded.explanation, difficulty = excluded.difficulty, source_ref = excluded.source_ref, active = 1
  WHERE questions.updated_at IS NULL;
INSERT INTO questions (id, topic_id, week, type, source, prompt, payload, answer, explanation, difficulty, source_ref, active)
VALUES ('t3-cift-kisim-2', 'sinyal-islemleri', 3, 'num', 'derived', 'x(0) = 1, x(1) = 3 ve başka her yerde 0. Çift kısmın n = −1''deki değeri $x_e(-1)$ kaçtır?', '{"blanks":1}', '{"blanks":[["1.5"]]}', '$x_e(-1) = [x(-1) + x(1)]/2 = (0 + 3)/2 = 1{,}5$.', 2, 'Hafta 3, Çift ve tek diziler', 1)
  ON CONFLICT(id) DO UPDATE SET topic_id = excluded.topic_id, week = excluded.week, type = excluded.type,
    source = excluded.source, prompt = excluded.prompt, payload = excluded.payload, answer = excluded.answer,
    explanation = excluded.explanation, difficulty = excluded.difficulty, source_ref = excluded.source_ref, active = 1
  WHERE questions.updated_at IS NULL;
INSERT INTO questions (id, topic_id, week, type, source, prompt, payload, answer, explanation, difficulty, source_ref, active)
VALUES ('t3-tek-ornek', 'sinyal-islemleri', 3, 'tf', 'derived', '$x(n) = \sin(0{,}3\pi n)$ tek bir dizidir.', '{}', '{"value":true}', 'Doğru. sin(−θ) = −sin(θ) olduğu için x(−n) = −x(n).', 1, 'Hafta 3, Çift ve tek diziler', 1)
  ON CONFLICT(id) DO UPDATE SET topic_id = excluded.topic_id, week = excluded.week, type = excluded.type,
    source = excluded.source, prompt = excluded.prompt, payload = excluded.payload, answer = excluded.answer,
    explanation = excluded.explanation, difficulty = excluded.difficulty, source_ref = excluded.source_ref, active = 1
  WHERE questions.updated_at IS NULL;
INSERT INTO questions (id, topic_id, week, type, source, prompt, payload, answer, explanation, difficulty, source_ref, active)
VALUES ('t3-gecikme', 'sinyal-islemleri', 3, 'num', 'derived', 'x(n) yalnızca n = 0''da 5 değerini alıyor. y(n) = x(n − 4) hangi n''de 5''tir?', '{"blanks":1}', '{"blanks":[["4"]]}', 'Gecikme: dizi 4 örnek sağa kayar; değer n − 4 = 0, yani n = 4''te görünür.', 1, 'Hafta 3, Kaydırma, ters çevirme ve ölçekleme', 1)
  ON CONFLICT(id) DO UPDATE SET topic_id = excluded.topic_id, week = excluded.week, type = excluded.type,
    source = excluded.source, prompt = excluded.prompt, payload = excluded.payload, answer = excluded.answer,
    explanation = excluded.explanation, difficulty = excluded.difficulty, source_ref = excluded.source_ref, active = 1
  WHERE questions.updated_at IS NULL;
INSERT INTO questions (id, topic_id, week, type, source, prompt, payload, answer, explanation, difficulty, source_ref, active)
VALUES ('t3-ters-konum', 'sinyal-islemleri', 3, 'num', 'derived', 'x(n) yalnızca n = 2''de sıfırdan farklı. y(n) = x(−n + 1) hangi n''de sıfırdan farklıdır?', '{"blanks":1}', '{"blanks":[["-1"]]}', '−n + 1 = 2 olmalı: n = −1.', 2, 'Hafta 3, Kaydırma, ters çevirme ve ölçekleme', 1)
  ON CONFLICT(id) DO UPDATE SET topic_id = excluded.topic_id, week = excluded.week, type = excluded.type,
    source = excluded.source, prompt = excluded.prompt, payload = excluded.payload, answer = excluded.answer,
    explanation = excluded.explanation, difficulty = excluded.difficulty, source_ref = excluded.source_ref, active = 1
  WHERE questions.updated_at IS NULL;
INSERT INTO questions (id, topic_id, week, type, source, prompt, payload, answer, explanation, difficulty, source_ref, active)
VALUES ('t3-seyrelt-kayip', 'sinyal-islemleri', 3, 'tf', 'derived', 'y(n) = x(2n) seyreltmesinde x''in tek indisli örnekleri y''de kaybolur.', '{}', '{"value":true}', 'Doğru. y yalnızca x''in çift indisli örneklerini (x(0), x(2), x(4), ...) içerir; bu yüzden seyreltmede bilgi kaybolabilir.', 2, 'Hafta 3, Kaydırma, ters çevirme ve ölçekleme', 1)
  ON CONFLICT(id) DO UPDATE SET topic_id = excluded.topic_id, week = excluded.week, type = excluded.type,
    source = excluded.source, prompt = excluded.prompt, payload = excluded.payload, answer = excluded.answer,
    explanation = excluded.explanation, difficulty = excluded.difficulty, source_ref = excluded.source_ref, active = 1
  WHERE questions.updated_at IS NULL;
INSERT INTO questions (id, topic_id, week, type, source, prompt, payload, answer, explanation, difficulty, source_ref, active)
VALUES ('t3-enerji-2', 'sinyal-islemleri', 3, 'num', 'derived', 'Yalnızca n = −1, 0, 1''de 2, 1, −3 değerlerini alan dizinin enerjisi kaçtır?', '{"blanks":1}', '{"blanks":[["14"]]}', 'E = 4 + 1 + 9 = 14.', 1, 'Hafta 3, Sinyal enerjisi ve gücü', 1)
  ON CONFLICT(id) DO UPDATE SET topic_id = excluded.topic_id, week = excluded.week, type = excluded.type,
    source = excluded.source, prompt = excluded.prompt, payload = excluded.payload, answer = excluded.answer,
    explanation = excluded.explanation, difficulty = excluded.difficulty, source_ref = excluded.source_ref, active = 1
  WHERE questions.updated_at IS NULL;
INSERT INTO questions (id, topic_id, week, type, source, prompt, payload, answer, explanation, difficulty, source_ref, active)
VALUES ('t3-guc-cos', 'sinyal-islemleri', 3, 'num', 'derived', '$x(n) = 3\cos(\pi n / 2)$ dizisinin gücü kaçtır? (bir periyot: n = 0..3)', '{"blanks":1}', '{"blanks":[["4.5"]]}', 'Bir periyot: 3, 0, −3, 0. P = (9 + 0 + 9 + 0)/4 = 4,5 = A²/2.', 2, 'Hafta 3, Sinyal enerjisi ve gücü', 1)
  ON CONFLICT(id) DO UPDATE SET topic_id = excluded.topic_id, week = excluded.week, type = excluded.type,
    source = excluded.source, prompt = excluded.prompt, payload = excluded.payload, answer = excluded.answer,
    explanation = excluded.explanation, difficulty = excluded.difficulty, source_ref = excluded.source_ref, active = 1
  WHERE questions.updated_at IS NULL;
INSERT INTO questions (id, topic_id, week, type, source, prompt, payload, answer, explanation, difficulty, source_ref, active)
VALUES ('t3-enerji-guc', 'sinyal-islemleri', 3, 'tf', 'derived', 'Enerjisi sonlu olan bir dizinin ortalama gücü sıfırdır.', '{}', '{"value":true}', 'Doğru. Sonlu enerji giderek büyüyen bir pencere uzunluğuna bölününce sıfıra gider; bir dizi hem enerji hem güç sinyali olamaz.', 1, 'Hafta 3, Sinyal enerjisi ve gücü', 1)
  ON CONFLICT(id) DO UPDATE SET topic_id = excluded.topic_id, week = excluded.week, type = excluded.type,
    source = excluded.source, prompt = excluded.prompt, payload = excluded.payload, answer = excluded.answer,
    explanation = excluded.explanation, difficulty = excluded.difficulty, source_ref = excluded.source_ref, active = 1
  WHERE questions.updated_at IS NULL;
INSERT INTO questions (id, topic_id, week, type, source, prompt, payload, answer, explanation, difficulty, source_ref, active)
VALUES ('t3-dogrusal-degil', 'ayrik-sistemler', 3, 'mcq', 'derived', 'Aşağıdaki sistemlerden hangisi doğrusal **değildir**?', '{"choices":["y(n) = x(n)·x(n − 1)","y(n) = x(n) − x(n − 1)","y(n) = n·x(n)","y(n) = x(−n)"]}', '{"index":0}', 'İki örneğin çarpımı homojen değildir: 2x girişi 4 kat çıkış verir. Diğerleri süperpozisyonu sağlar (n·x(n) ve x(−n) doğrusal ama zamanla değişir).', 2, 'Hafta 3, Doğrusallık ve süperpozisyon', 1)
  ON CONFLICT(id) DO UPDATE SET topic_id = excluded.topic_id, week = excluded.week, type = excluded.type,
    source = excluded.source, prompt = excluded.prompt, payload = excluded.payload, answer = excluded.answer,
    explanation = excluded.explanation, difficulty = excluded.difficulty, source_ref = excluded.source_ref, active = 1
  WHERE questions.updated_at IS NULL;
INSERT INTO questions (id, topic_id, week, type, source, prompt, payload, answer, explanation, difficulty, source_ref, active)
VALUES ('t3-statik', 'ayrik-sistemler', 3, 'mcq', 'derived', 'Aşağıdaki sistemlerden hangisi hafızasızdır (statik)?', '{"choices":["y(n) = 5x²(n)","y(n) = x(n − 1)","y(n) = x(n) + x(n + 1)","y(n) = Σ x(k), k ≤ n"]}', '{"index":0}', '5x²(n) yalnızca o anki örneğe bağlıdır. Diğerleri başka anlardaki örnekleri kullanır.', 1, 'Hafta 3, Nedensellik, kararlılık, hafıza, tersinirlik', 1)
  ON CONFLICT(id) DO UPDATE SET topic_id = excluded.topic_id, week = excluded.week, type = excluded.type,
    source = excluded.source, prompt = excluded.prompt, payload = excluded.payload, answer = excluded.answer,
    explanation = excluded.explanation, difficulty = excluded.difficulty, source_ref = excluded.source_ref, active = 1
  WHERE questions.updated_at IS NULL;
INSERT INTO questions (id, topic_id, week, type, source, prompt, payload, answer, explanation, difficulty, source_ref, active)
VALUES ('t3-zaman-degismez', 'ayrik-sistemler', 3, 'tf', 'derived', 'y(n) = x(2n) sistemi zamanla değişmezdir.', '{}', '{"value":false}', 'Yanlış. x(n − n₀) girişi x(2n − n₀) verir, ama y(n − n₀) = x(2n − 2n₀)''dır; ikisi farklıdır.', 2, 'Hafta 3, Nedensellik, kararlılık, hafıza, tersinirlik', 1)
  ON CONFLICT(id) DO UPDATE SET topic_id = excluded.topic_id, week = excluded.week, type = excluded.type,
    source = excluded.source, prompt = excluded.prompt, payload = excluded.payload, answer = excluded.answer,
    explanation = excluded.explanation, difficulty = excluded.difficulty, source_ref = excluded.source_ref, active = 1
  WHERE questions.updated_at IS NULL;
INSERT INTO questions (id, topic_id, week, type, source, prompt, payload, answer, explanation, difficulty, source_ref, active)
VALUES ('t3-kararli', 'ayrik-sistemler', 3, 'tf', 'derived', 'y(n) = x(n) + 0,5x(n − 1) sistemi BIBO kararlıdır.', '{}', '{"value":true}', 'Doğru. |x| ≤ A ise |y| ≤ A + 0,5A = 1,5A: çıkış sınırlıdır.', 2, 'Hafta 3, Nedensellik, kararlılık, hafıza, tersinirlik', 1)
  ON CONFLICT(id) DO UPDATE SET topic_id = excluded.topic_id, week = excluded.week, type = excluded.type,
    source = excluded.source, prompt = excluded.prompt, payload = excluded.payload, answer = excluded.answer,
    explanation = excluded.explanation, difficulty = excluded.difficulty, source_ref = excluded.source_ref, active = 1
  WHERE questions.updated_at IS NULL;
INSERT INTO questions (id, topic_id, week, type, source, prompt, payload, answer, explanation, difficulty, source_ref, active)
VALUES ('t3-lti-durtu-2', 'ayrik-sistemler', 3, 'num', 'derived', 'y(n) = 3x(n) + x(n − 2) sisteminin dürtü yanıtını n = 0''dan n = 2''ye kadar yaz.', '{"blanks":1}', '{"blanks":[["[3 0 1]"]]}', 'h(n) = 3δ(n) + δ(n − 2): n = 0''da 3, n = 1''de 0, n = 2''de 1.', 2, 'Hafta 3, LTI sistemler ve dürtü yanıtı', 1)
  ON CONFLICT(id) DO UPDATE SET topic_id = excluded.topic_id, week = excluded.week, type = excluded.type,
    source = excluded.source, prompt = excluded.prompt, payload = excluded.payload, answer = excluded.answer,
    explanation = excluded.explanation, difficulty = excluded.difficulty, source_ref = excluded.source_ref, active = 1
  WHERE questions.updated_at IS NULL;
INSERT INTO questions (id, topic_id, week, type, source, prompt, payload, answer, explanation, difficulty, source_ref, active)
VALUES ('t4-durtu-kaydir-2', 'konvolusyon-temel', 4, 'num', 'derived', 'x(n) yalnızca n = −2''de 7 değerini alıyor. y(n) = x(n) * δ(n − 5) hangi n''de 7''dir?', '{"blanks":1}', '{"blanks":[["3"]]}', 'y(n) = x(n − 5): değer n − 5 = −2, yani n = 3''te görünür.', 1, 'Hafta 4, Konvolüsyon toplamı', 1)
  ON CONFLICT(id) DO UPDATE SET topic_id = excluded.topic_id, week = excluded.week, type = excluded.type,
    source = excluded.source, prompt = excluded.prompt, payload = excluded.payload, answer = excluded.answer,
    explanation = excluded.explanation, difficulty = excluded.difficulty, source_ref = excluded.source_ref, active = 1
  WHERE questions.updated_at IS NULL;
INSERT INTO questions (id, topic_id, week, type, source, prompt, payload, answer, explanation, difficulty, source_ref, active)
VALUES ('t4-ilk-ornek-2', 'konvolusyon-temel', 4, 'num', 'derived', 'x(0) = 1, x(1) = −2 ve h(0) = 4, h(1) = 3 (diğer örnekler 0). y(n) = x(n) * h(n) için y(1) ve y(2) nedir?

y(1) = ____ , y(2) = ____', '{"blanks":2}', '{"blanks":[["-5"],["-6"]]}', 'y(1) = x(0)h(1) + x(1)h(0) = 3 − 8 = −5. y(2) = x(1)h(1) = −6.', 2, 'Hafta 4, Konvolüsyon toplamı', 1)
  ON CONFLICT(id) DO UPDATE SET topic_id = excluded.topic_id, week = excluded.week, type = excluded.type,
    source = excluded.source, prompt = excluded.prompt, payload = excluded.payload, answer = excluded.answer,
    explanation = excluded.explanation, difficulty = excluded.difficulty, source_ref = excluded.source_ref, active = 1
  WHERE questions.updated_at IS NULL;
INSERT INTO questions (id, topic_id, week, type, source, prompt, payload, answer, explanation, difficulty, source_ref, active)
VALUES ('t4-kaskat-hesap-2', 'konvolusyon-temel', 4, 'num', 'derived', '$h_1(n) = \delta(n) + \delta(n-2)$ ve $h_2(n) = 2\delta(n)$ kaskat bağlı. Eşdeğer dürtü yanıtını n = 0''dan başlayarak dizi olarak yaz.', '{"blanks":1}', '{"blanks":[["[2 0 2]"]]}', '2δ(n) ile konvolüsyon diziyi 2 ile çarpar: 2δ(n) + 2δ(n − 2).', 2, 'Hafta 4, Değişme, birleşme ve dağılma', 1)
  ON CONFLICT(id) DO UPDATE SET topic_id = excluded.topic_id, week = excluded.week, type = excluded.type,
    source = excluded.source, prompt = excluded.prompt, payload = excluded.payload, answer = excluded.answer,
    explanation = excluded.explanation, difficulty = excluded.difficulty, source_ref = excluded.source_ref, active = 1
  WHERE questions.updated_at IS NULL;
INSERT INTO questions (id, topic_id, week, type, source, prompt, payload, answer, explanation, difficulty, source_ref, active)
VALUES ('t4-paralel-hesap-2', 'konvolusyon-temel', 4, 'num', 'derived', '$h_1(n) = \delta(n) + \delta(n-1)$ ve $h_2(n) = \delta(n) - \delta(n-1) + \delta(n-2)$ paralel bağlı. Eşdeğer dürtü yanıtını n = 0''dan başlayarak dizi olarak yaz.', '{"blanks":1}', '{"blanks":[["[2 0 1]"]]}', 'Toplam: (1 + 1)δ(n) + (1 − 1)δ(n − 1) + δ(n − 2).', 2, 'Hafta 4, Değişme, birleşme ve dağılma', 1)
  ON CONFLICT(id) DO UPDATE SET topic_id = excluded.topic_id, week = excluded.week, type = excluded.type,
    source = excluded.source, prompt = excluded.prompt, payload = excluded.payload, answer = excluded.answer,
    explanation = excluded.explanation, difficulty = excluded.difficulty, source_ref = excluded.source_ref, active = 1
  WHERE questions.updated_at IS NULL;
INSERT INTO questions (id, topic_id, week, type, source, prompt, payload, answer, explanation, difficulty, source_ref, active)
VALUES ('t4-dagilma', 'konvolusyon-temel', 4, 'tf', 'derived', 'x(n) * [h₁(n) + h₂(n)] = x(n) * h₁(n) + x(n) * h₂(n) eşitliği her zaman sağlanır.', '{}', '{"value":true}', 'Doğru. Bu dağılma özelliğidir; paralel bağlı iki sistemin dürtü yanıtları toplanır.', 1, 'Hafta 4, Değişme, birleşme ve dağılma', 1)
  ON CONFLICT(id) DO UPDATE SET topic_id = excluded.topic_id, week = excluded.week, type = excluded.type,
    source = excluded.source, prompt = excluded.prompt, payload = excluded.payload, answer = excluded.answer,
    explanation = excluded.explanation, difficulty = excluded.difficulty, source_ref = excluded.source_ref, active = 1
  WHERE questions.updated_at IS NULL;
INSERT INTO questions (id, topic_id, week, type, source, prompt, payload, answer, explanation, difficulty, source_ref, active)
VALUES ('t4-geometrik-2', 'konvolusyon-temel', 4, 'num', 'derived', '$\displaystyle\sum_{n=0}^{\infty} (1/3)^n$ toplamı kaçtır?', '{"blanks":1}', '{"blanks":[["1.5"]]}', '1/(1 − 1/3) = 3/2 = 1,5.', 1, 'Hafta 4, Doğrudan değerlendirme ve seriler', 1)
  ON CONFLICT(id) DO UPDATE SET topic_id = excluded.topic_id, week = excluded.week, type = excluded.type,
    source = excluded.source, prompt = excluded.prompt, payload = excluded.payload, answer = excluded.answer,
    explanation = excluded.explanation, difficulty = excluded.difficulty, source_ref = excluded.source_ref, active = 1
  WHERE questions.updated_at IS NULL;
INSERT INTO questions (id, topic_id, week, type, source, prompt, payload, answer, explanation, difficulty, source_ref, active)
VALUES ('t4-ustel-basamak-2', 'konvolusyon-temel', 4, 'num', 'derived', '$y(n) = (0{,}2)^n u(n) * u(n)$ için y(1) kaçtır?', '{"blanks":1}', '{"blanks":[["1.2"]]}', 'y(1) = 1 + 0,2 = 1,2.', 2, 'Hafta 4, Doğrudan değerlendirme ve seriler', 1)
  ON CONFLICT(id) DO UPDATE SET topic_id = excluded.topic_id, week = excluded.week, type = excluded.type,
    source = excluded.source, prompt = excluded.prompt, payload = excluded.payload, answer = excluded.answer,
    explanation = excluded.explanation, difficulty = excluded.difficulty, source_ref = excluded.source_ref, active = 1
  WHERE questions.updated_at IS NULL;
INSERT INTO questions (id, topic_id, week, type, source, prompt, payload, answer, explanation, difficulty, source_ref, active)
VALUES ('t4-ustel-limit-2', 'konvolusyon-temel', 4, 'num', 'derived', '$y(n) = (0{,}9)^n u(n) * u(n)$ dizisi n → ∞ iken hangi değere yaklaşır?', '{"blanks":1}', '{"blanks":[["10"]]}', '1/(1 − 0,9) = 10.', 2, 'Hafta 4, Doğrudan değerlendirme ve seriler', 1)
  ON CONFLICT(id) DO UPDATE SET topic_id = excluded.topic_id, week = excluded.week, type = excluded.type,
    source = excluded.source, prompt = excluded.prompt, payload = excluded.payload, answer = excluded.answer,
    explanation = excluded.explanation, difficulty = excluded.difficulty, source_ref = excluded.source_ref, active = 1
  WHERE questions.updated_at IS NULL;
INSERT INTO questions (id, topic_id, week, type, source, prompt, payload, answer, explanation, difficulty, source_ref, active)
VALUES ('t4-uzunluk-2', 'konvolusyon-hesap', 4, 'num', 'derived', '12 örnek uzunluğundaki bir dizi 6 örnek uzunluğundaki bir diziyle konvolüsyona sokuluyor. Çıkış kaç örnek uzunluğundadır?', '{"blanks":1}', '{"blanks":[["17"]]}', '12 + 6 − 1 = 17.', 1, 'Hafta 4, Çıkışın uzunluğu ve konumu', 1)
  ON CONFLICT(id) DO UPDATE SET topic_id = excluded.topic_id, week = excluded.week, type = excluded.type,
    source = excluded.source, prompt = excluded.prompt, payload = excluded.payload, answer = excluded.answer,
    explanation = excluded.explanation, difficulty = excluded.difficulty, source_ref = excluded.source_ref, active = 1
  WHERE questions.updated_at IS NULL;
INSERT INTO questions (id, topic_id, week, type, source, prompt, payload, answer, explanation, difficulty, source_ref, active)
VALUES ('t4-aralik-2', 'konvolusyon-hesap', 4, 'num', 'derived', 'x(n) yalnızca 0 ≤ n ≤ 9, h(n) yalnızca −3 ≤ n ≤ 2 aralığında sıfırdan farklı. y(n) hangi aralıkta sıfırdan farklı olabilir?

____ ≤ n ≤ ____', '{"blanks":2}', '{"blanks":[["-3"],["11"]]}', '[0 + (−3), 9 + 2] = [−3, 11].', 2, 'Hafta 4, Çıkışın uzunluğu ve konumu', 1)
  ON CONFLICT(id) DO UPDATE SET topic_id = excluded.topic_id, week = excluded.week, type = excluded.type,
    source = excluded.source, prompt = excluded.prompt, payload = excluded.payload, answer = excluded.answer,
    explanation = excluded.explanation, difficulty = excluded.difficulty, source_ref = excluded.source_ref, active = 1
  WHERE questions.updated_at IS NULL;
INSERT INTO questions (id, topic_id, week, type, source, prompt, payload, answer, explanation, difficulty, source_ref, active)
VALUES ('t4-grafik-hesap-2', 'konvolusyon-hesap', 4, 'num', 'derived', 'x(n): n = 0..2 için 2, 0, 1. h(n): n = 0, 1 için 1, 3. y(n) = x(n) * h(n) için:

y(1) = ____ , y(3) = ____', '{"blanks":2}', '{"blanks":[["6"],["3"]]}', 'y(1) = x(0)h(1) + x(1)h(0) = 6 + 0 = 6. y(3) = x(2)h(1) = 3.', 2, 'Hafta 4, Grafik yöntem', 1)
  ON CONFLICT(id) DO UPDATE SET topic_id = excluded.topic_id, week = excluded.week, type = excluded.type,
    source = excluded.source, prompt = excluded.prompt, payload = excluded.payload, answer = excluded.answer,
    explanation = excluded.explanation, difficulty = excluded.difficulty, source_ref = excluded.source_ref, active = 1
  WHERE questions.updated_at IS NULL;
INSERT INTO questions (id, topic_id, week, type, source, prompt, payload, answer, explanation, difficulty, source_ref, active)
VALUES ('t4-kaydirma-2', 'konvolusyon-hesap', 4, 'num', 'derived', 'x(n) = {1, −1, 2} ve h(n) = {3, 1}, ikisi de n = 0''dan başlıyor. y(n) = x(n) * h(n) dizisini bul.', '{"blanks":1}', '{"blanks":[["[3 -2 5 2]"]]}', 'y(0) = 3; y(1) = 1 − 3 = −2; y(2) = −1 + 6 = 5; y(3) = 2.', 2, 'Hafta 4, Kaydırma kuralı', 1)
  ON CONFLICT(id) DO UPDATE SET topic_id = excluded.topic_id, week = excluded.week, type = excluded.type,
    source = excluded.source, prompt = excluded.prompt, payload = excluded.payload, answer = excluded.answer,
    explanation = excluded.explanation, difficulty = excluded.difficulty, source_ref = excluded.source_ref, active = 1
  WHERE questions.updated_at IS NULL;
INSERT INTO questions (id, topic_id, week, type, source, prompt, payload, answer, explanation, difficulty, source_ref, active)
VALUES ('t4-polinom-3', 'konvolusyon-hesap', 4, 'num', 'derived', '(2 − z)(1 + z + z²) çarpımının katsayılarını sabit terimden başlayarak dizi olarak yaz.', '{"blanks":1}', '{"blanks":[["[2 1 1 -1]"]]}', 'Konvolüsyon: 2; 2 − 1 = 1; 2 − 1 = 1; −1. Yani 2 + z + z² − z³.', 2, 'Hafta 4, Çarpım tablosu ve polinom çarpımı', 1)
  ON CONFLICT(id) DO UPDATE SET topic_id = excluded.topic_id, week = excluded.week, type = excluded.type,
    source = excluded.source, prompt = excluded.prompt, payload = excluded.payload, answer = excluded.answer,
    explanation = excluded.explanation, difficulty = excluded.difficulty, source_ref = excluded.source_ref, active = 1
  WHERE questions.updated_at IS NULL;
INSERT INTO questions (id, topic_id, week, type, source, prompt, payload, answer, explanation, difficulty, source_ref, active)
VALUES ('t4-zar-10', 'konvolusyon-uygulama', 4, 'num', 'derived', 'İki adil zarın toplamının 10 olma olasılığı kaçtır?', '{"blanks":1}', '{"blanks":[["1/12"]]}', '(4,6), (5,5), (6,4): 3/36 = 1/12.', 2, 'Hafta 4, Olasılık dağılımlarının konvolüsyonu', 1)
  ON CONFLICT(id) DO UPDATE SET topic_id = excluded.topic_id, week = excluded.week, type = excluded.type,
    source = excluded.source, prompt = excluded.prompt, payload = excluded.payload, answer = excluded.answer,
    explanation = excluded.explanation, difficulty = excluded.difficulty, source_ref = excluded.source_ref, active = 1
  WHERE questions.updated_at IS NULL;
INSERT INTO questions (id, topic_id, week, type, source, prompt, payload, answer, explanation, difficulty, source_ref, active)
VALUES ('t4-zar-2', 'konvolusyon-uygulama', 4, 'num', 'derived', 'İki adil zarın toplamının 2 olma olasılığı kaçtır?', '{"blanks":1}', '{"blanks":[["1/36"]]}', 'Yalnızca (1, 1): 1/36.', 1, 'Hafta 4, Olasılık dağılımlarının konvolüsyonu', 1)
  ON CONFLICT(id) DO UPDATE SET topic_id = excluded.topic_id, week = excluded.week, type = excluded.type,
    source = excluded.source, prompt = excluded.prompt, payload = excluded.payload, answer = excluded.answer,
    explanation = excluded.explanation, difficulty = excluded.difficulty, source_ref = excluded.source_ref, active = 1
  WHERE questions.updated_at IS NULL;
INSERT INTO questions (id, topic_id, week, type, source, prompt, payload, answer, explanation, difficulty, source_ref, active)
VALUES ('t4-ma-katsayi-2', 'konvolusyon-uygulama', 4, 'num', 'derived', '5 noktalı hareketli ortalamanın dürtü yanıtının her katsayısı kaçtır?', '{"blanks":1}', '{"blanks":[["0.2"]]}', '1/M = 1/5 = 0,2.', 1, 'Hafta 4, Hareketli ortalama', 1)
  ON CONFLICT(id) DO UPDATE SET topic_id = excluded.topic_id, week = excluded.week, type = excluded.type,
    source = excluded.source, prompt = excluded.prompt, payload = excluded.payload, answer = excluded.answer,
    explanation = excluded.explanation, difficulty = excluded.difficulty, source_ref = excluded.source_ref, active = 1
  WHERE questions.updated_at IS NULL;
INSERT INTO questions (id, topic_id, week, type, source, prompt, payload, answer, explanation, difficulty, source_ref, active)
VALUES ('t4-ma-gecikme-2', 'konvolusyon-uygulama', 4, 'num', 'derived', '5 noktalı nedensel hareketli ortalamanın gecikmesi kaç örnektir?', '{"blanks":1}', '{"blanks":[["2"]]}', '(M − 1)/2 = 2.', 2, 'Hafta 4, Hareketli ortalama', 1)
  ON CONFLICT(id) DO UPDATE SET topic_id = excluded.topic_id, week = excluded.week, type = excluded.type,
    source = excluded.source, prompt = excluded.prompt, payload = excluded.payload, answer = excluded.answer,
    explanation = excluded.explanation, difficulty = excluded.difficulty, source_ref = excluded.source_ref, active = 1
  WHERE questions.updated_at IS NULL;
INSERT INTO questions (id, topic_id, week, type, source, prompt, payload, answer, explanation, difficulty, source_ref, active)
VALUES ('t4-otokor-0-2', 'konvolusyon-uygulama', 4, 'num', 'derived', 'x(0) = 1, x(1) = −2, x(2) = 2 (başka yerde 0). $r_{xx}(0)$ kaçtır?', '{"blanks":1}', '{"blanks":[["9"]]}', '1 + 4 + 4 = 9: dizinin enerjisi.', 2, 'Hafta 4, Korelasyon ve otokorelasyon', 1)
  ON CONFLICT(id) DO UPDATE SET topic_id = excluded.topic_id, week = excluded.week, type = excluded.type,
    source = excluded.source, prompt = excluded.prompt, payload = excluded.payload, answer = excluded.answer,
    explanation = excluded.explanation, difficulty = excluded.difficulty, source_ref = excluded.source_ref, active = 1
  WHERE questions.updated_at IS NULL;
INSERT INTO questions (id, topic_id, week, type, source, prompt, payload, answer, explanation, difficulty, source_ref, active)
VALUES ('t4-otokor-ustel-2', 'konvolusyon-uygulama', 4, 'num', 'derived', '$x(n) = (0{,}8)^n u(n)$ dizisinin otokorelasyonunun n = 0 değeri kaçtır?', '{"blanks":1}', '{"blanks":[["2.778±0.01"]]}', '1/(1 − 0,64) = 1/0,36 ≈ 2,778.', 3, 'Hafta 4, Korelasyon ve otokorelasyon', 1)
  ON CONFLICT(id) DO UPDATE SET topic_id = excluded.topic_id, week = excluded.week, type = excluded.type,
    source = excluded.source, prompt = excluded.prompt, payload = excluded.payload, answer = excluded.answer,
    explanation = excluded.explanation, difficulty = excluded.difficulty, source_ref = excluded.source_ref, active = 1
  WHERE questions.updated_at IS NULL;
INSERT INTO questions (id, topic_id, week, type, source, prompt, payload, answer, explanation, difficulty, source_ref, active)
VALUES ('t4-korelasyon-degisme', 'konvolusyon-uygulama', 4, 'tf', 'derived', 'Korelasyon değişme özelliğini sağlar: her x ve h için $r_{xh}(n) = r_{hx}(n)$.', '{}', '{"value":false}', 'Yanlış. Sıra değişince sonuç ters çevrilir: r_hx(n) = r_xh(−n).', 2, 'Hafta 4, Korelasyon ve otokorelasyon', 1)
  ON CONFLICT(id) DO UPDATE SET topic_id = excluded.topic_id, week = excluded.week, type = excluded.type,
    source = excluded.source, prompt = excluded.prompt, payload = excluded.payload, answer = excluded.answer,
    explanation = excluded.explanation, difficulty = excluded.difficulty, source_ref = excluded.source_ref, active = 1
  WHERE questions.updated_at IS NULL;

UPDATE questions SET kavram = 'dsp-giris', yedek = 0 WHERE id = 'h1-dsp-avantaj';
UPDATE questions SET kavram = 'dsp-giris', yedek = 0 WHERE id = 'h1-dsp-genis-bant';
UPDATE questions SET kavram = 'dsp-giris', yedek = 0 WHERE id = 'h1-dsp-programlanabilir';
UPDATE questions SET kavram = 'adc-niceleme', yedek = 0 WHERE id = 'h1-adc-seviye';
UPDATE questions SET kavram = 'adc-niceleme', yedek = 0 WHERE id = 'h1-adc-aralik';
UPDATE questions SET kavram = 'adc-niceleme', yedek = 0 WHERE id = 'h1-adc-adim';
UPDATE questions SET kavram = 'adc-niceleme', yedek = 0 WHERE id = 'h1-adc-bit-gerekli';
UPDATE questions SET kavram = 'adc-niceleme', yedek = 0 WHERE id = 'h1-ayrik-tanim';
UPDATE questions SET kavram = 'sinyal-eksen', yedek = 0 WHERE id = 'h1-eksen-bagimli';
UPDATE questions SET kavram = 'sinyal-eksen', yedek = 0 WHERE id = 'h1-alan-ornek';
UPDATE questions SET kavram = 'sinyal-eksen', yedek = 0 WHERE id = 'h1-alan-uzaysal';
UPDATE questions SET kavram = 'ortalama-sapma', yedek = 0 WHERE id = 'h1-ortalama-hesap';
UPDATE questions SET kavram = 'ortalama-sapma', yedek = 0 WHERE id = 'h1-n-eksi-1';
UPDATE questions SET kavram = 'ortalama-sapma', yedek = 0 WHERE id = 'h1-varyans';
UPDATE questions SET kavram = 'ortalama-sapma', yedek = 0 WHERE id = 'h1-dc-ac';
UPDATE questions SET kavram = 'ortalama-sapma', yedek = 0 WHERE id = 'h1-varyans-toplam';
UPDATE questions SET kavram = 'rms', yedek = 0 WHERE id = 'h1-rms-dc';
UPDATE questions SET kavram = 'rms', yedek = 0 WHERE id = 'h1-sinus-vrms';
UPDATE questions SET kavram = 'rms', yedek = 0 WHERE id = 'h1-vpp-kare';
UPDATE questions SET kavram = 'rms', yedek = 0 WHERE id = 'h1-vpp-gurultu';
UPDATE questions SET kavram = 'rms', yedek = 0 WHERE id = 'h1-rms-sigma-esit';
UPDATE questions SET kavram = 'histogram-pmf', yedek = 0 WHERE id = 'h1-hist-ortalama';
UPDATE questions SET kavram = 'histogram-pmf', yedek = 0 WHERE id = 'h1-hist-toplam';
UPDATE questions SET kavram = 'histogram-pmf', yedek = 0 WHERE id = 'h1-pmf-olasilik';
UPDATE questions SET kavram = 'histogram-pmf', yedek = 0 WHERE id = 'h1-pdf-alan';
UPDATE questions SET kavram = 'histogram-pmf', yedek = 0 WHERE id = 'h1-binning';
UPDATE questions SET kavram = 'histogram-pmf', yedek = 0 WHERE id = 'h1-hist-puruz';
UPDATE questions SET kavram = 'normal-dagilim', yedek = 0 WHERE id = 'h1-gauss-68';
UPDATE questions SET kavram = 'normal-dagilim', yedek = 0 WHERE id = 'h1-gauss-uc-sigma';
UPDATE questions SET kavram = 'normal-dagilim', yedek = 0 WHERE id = 'h1-gauss-tepe';
UPDATE questions SET kavram = 'normal-dagilim', yedek = 0 WHERE id = 'h1-merkezi-limit';
UPDATE questions SET kavram = 'normal-dagilim', yedek = 0 WHERE id = 'h1-gauss-sigma-tepe';
UPDATE questions SET kavram = 'gurultu-uretimi', yedek = 0 WHERE id = 'h1-rnd-sigma';
UPDATE questions SET kavram = 'gurultu-uretimi', yedek = 0 WHERE id = 'h1-rnd-12';
UPDATE questions SET kavram = 'gurultu-uretimi', yedek = 0 WHERE id = 'h1-rnd-iki';
UPDATE questions SET kavram = 'kesinlik-dogruluk', yedek = 0 WHERE id = 'h1-kesinlik';
UPDATE questions SET kavram = 'kesinlik-dogruluk', yedek = 0 WHERE id = 'h1-ortalama-iyilestirir';
UPDATE questions SET kavram = 'kesinlik-dogruluk', yedek = 0 WHERE id = 'h1-kalibrasyon';
UPDATE questions SET kavram = 'matlab-temel', yedek = 0 WHERE id = 'h2-noktali-virgul';
UPDATE questions SET kavram = 'matlab-temel', yedek = 0 WHERE id = 'h2-ans';
UPDATE questions SET kavram = 'matlab-temel', yedek = 0 WHERE id = 'h2-yorum';
UPDATE questions SET kavram = 'matlab-temel', yedek = 0 WHERE id = 'h2-nan';
UPDATE questions SET kavram = 'matlab-temel', yedek = 0 WHERE id = 'h2-clear';
UPDATE questions SET kavram = 'vektor-olusturma', yedek = 0 WHERE id = 'h2-aralik';
UPDATE questions SET kavram = 'vektor-olusturma', yedek = 0 WHERE id = 'h2-aralik-uzunluk';
UPDATE questions SET kavram = 'vektor-olusturma', yedek = 0 WHERE id = 'h2-linspace';
UPDATE questions SET kavram = 'vektor-olusturma', yedek = 0 WHERE id = 'h2-geri-sayma';
UPDATE questions SET kavram = 'vektor-olusturma', yedek = 0 WHERE id = 'h2-aralik-son';
UPDATE questions SET kavram = 'indeksleme', yedek = 0 WHERE id = 'h2-indeks-end';
UPDATE questions SET kavram = 'indeksleme', yedek = 0 WHERE id = 'h2-indeks-adim';
UPDATE questions SET kavram = 'indeksleme', yedek = 0 WHERE id = 'h2-indeks-sifir';
UPDATE questions SET kavram = 'matris-indeks', yedek = 0 WHERE id = 'h2-matris-satir';
UPDATE questions SET kavram = 'matris-indeks', yedek = 0 WHERE id = 'h2-dogrusal-indeks';
UPDATE questions SET kavram = 'matris-indeks', yedek = 0 WHERE id = 'h2-find';
UPDATE questions SET kavram = 'matris-indeks', yedek = 0 WHERE id = 'h2-dogrusal-formul';
UPDATE questions SET kavram = 'eleman-islem', yedek = 0 WHERE id = 'h2-eleman-carpim';
UPDATE questions SET kavram = 'eleman-islem', yedek = 0 WHERE id = 'h2-matris-carpim';
UPDATE questions SET kavram = 'eleman-islem', yedek = 0 WHERE id = 'h2-kare-hata';
UPDATE questions SET kavram = 'eleman-islem', yedek = 0 WHERE id = 'h2-us';
UPDATE questions SET kavram = 'eleman-islem', yedek = 0 WHERE id = 'h2-det';
UPDATE questions SET kavram = 'mantiksal', yedek = 0 WHERE id = 'h2-esit-degil';
UPDATE questions SET kavram = 'mantiksal', yedek = 0 WHERE id = 'h2-mantiksal-sayma';
UPDATE questions SET kavram = 'mantiksal', yedek = 0 WHERE id = 'h2-mantiksal-secim';
UPDATE questions SET kavram = 'mantiksal', yedek = 0 WHERE id = 'h2-kisa-devre';
UPDATE questions SET kavram = 'fonksiyon-tanim', yedek = 0 WHERE id = 'h2-fonksiyon-cikis';
UPDATE questions SET kavram = 'fonksiyon-tanim', yedek = 0 WHERE id = 'h2-dosya-adi';
UPDATE questions SET kavram = 'fonksiyon-tanim', yedek = 0 WHERE id = 'h2-yerel-degisken';
UPDATE questions SET kavram = 'fonksiyon-tanim', yedek = 0 WHERE id = 'h2-anonim';
UPDATE questions SET kavram = 'rastgele-uretim', yedek = 0 WHERE id = 'h2-rand-boyut';
UPDATE questions SET kavram = 'rastgele-uretim', yedek = 0 WHERE id = 'h2-randi';
UPDATE questions SET kavram = 'rastgele-uretim', yedek = 0 WHERE id = 'h2-randperm';
UPDATE questions SET kavram = 'rastgele-uretim', yedek = 0 WHERE id = 'h2-rand-aralik';
UPDATE questions SET kavram = 'birlestirme', yedek = 0 WHERE id = 'h2-cat-boyut';
UPDATE questions SET kavram = 'birlestirme', yedek = 0 WHERE id = 'h2-vertcat';
UPDATE questions SET kavram = 'birlestirme', yedek = 0 WHERE id = 'h2-yatay-kural';
UPDATE questions SET kavram = 'istatistik-boyut', yedek = 0 WHERE id = 'h2-mean-boyut';
UPDATE questions SET kavram = 'istatistik-boyut', yedek = 0 WHERE id = 'h2-mean-all';
UPDATE questions SET kavram = 'istatistik-boyut', yedek = 0 WHERE id = 'h2-median';
UPDATE questions SET kavram = 'istatistik-boyut', yedek = 0 WHERE id = 'h2-std-agirlik';
UPDATE questions SET kavram = 'istatistik-boyut', yedek = 0 WHERE id = 'h2-corrcoef';
UPDATE questions SET kavram = 'istatistik-boyut', yedek = 0 WHERE id = 'h2-corrcoef-hesap';
UPDATE questions SET kavram = 'dizi-gosterim', yedek = 0 WHERE id = 'h3-dizi-okuma';
UPDATE questions SET kavram = 'dizi-gosterim', yedek = 0 WHERE id = 'h3-tanimsiz';
UPDATE questions SET kavram = 'temel-diziler', yedek = 0 WHERE id = 'h3-durtu-deger';
UPDATE questions SET kavram = 'temel-diziler', yedek = 0 WHERE id = 'h3-basamak-fark';
UPDATE questions SET kavram = 'temel-diziler', yedek = 0 WHERE id = 'h3-rampa';
UPDATE questions SET kavram = 'temel-diziler', yedek = 0 WHERE id = 'h3-basamak-toplam';
UPDATE questions SET kavram = 'ustel-sinuzoidal', yedek = 0 WHERE id = 'h3-ustel-sonum';
UPDATE questions SET kavram = 'ustel-sinuzoidal', yedek = 0 WHERE id = 'h3-karmasik-genlik';
UPDATE questions SET kavram = 'periyodiklik', yedek = 0 WHERE id = 'h3-periyot';
UPDATE questions SET kavram = 'periyodiklik', yedek = 0 WHERE id = 'h3-periyot-toplam';
UPDATE questions SET kavram = 'periyodiklik', yedek = 0 WHERE id = 'h3-periyodik-degil';
UPDATE questions SET kavram = 'periyodiklik', yedek = 0 WHERE id = 'h3-periyot-k';
UPDATE questions SET kavram = 'simetri', yedek = 0 WHERE id = 'h3-cift-kisim';
UPDATE questions SET kavram = 'simetri', yedek = 0 WHERE id = 'h3-tek-sifir';
UPDATE questions SET kavram = 'simetri', yedek = 0 WHERE id = 'h3-cift-ornek';
UPDATE questions SET kavram = 'sinyal-donusum', yedek = 0 WHERE id = 'h3-kaydirma';
UPDATE questions SET kavram = 'sinyal-donusum', yedek = 0 WHERE id = 'h3-ters-kaydir';
UPDATE questions SET kavram = 'sinyal-donusum', yedek = 0 WHERE id = 'h3-seyreltme';
UPDATE questions SET kavram = 'sinyal-donusum', yedek = 0 WHERE id = 'h3-ara-deger';
UPDATE questions SET kavram = 'sinyal-donusum', yedek = 0 WHERE id = 'h3-sira';
UPDATE questions SET kavram = 'enerji-guc', yedek = 0 WHERE id = 'h3-enerji';
UPDATE questions SET kavram = 'enerji-guc', yedek = 0 WHERE id = 'h3-enerji-ustel';
UPDATE questions SET kavram = 'enerji-guc', yedek = 0 WHERE id = 'h3-guc';
UPDATE questions SET kavram = 'enerji-guc', yedek = 0 WHERE id = 'h3-guc-basamak';
UPDATE questions SET kavram = 'durtu-ayristirma', yedek = 0 WHERE id = 'h3-durtu-toplam';
UPDATE questions SET kavram = 'durtu-ayristirma', yedek = 0 WHERE id = 'h3-eleme';
UPDATE questions SET kavram = 'dogrusallik', yedek = 0 WHERE id = 'h3-dogrusal';
UPDATE questions SET kavram = 'dogrusallik', yedek = 0 WHERE id = 'h3-sifir-giris';
UPDATE questions SET kavram = 'dogrusallik', yedek = 0 WHERE id = 'h3-superpozisyon';
UPDATE questions SET kavram = 'sistem-ozellik', yedek = 0 WHERE id = 'h3-nedensel';
UPDATE questions SET kavram = 'sistem-ozellik', yedek = 0 WHERE id = 'h3-zamanla-degisen';
UPDATE questions SET kavram = 'sistem-ozellik', yedek = 0 WHERE id = 'h3-kararlilik';
UPDATE questions SET kavram = 'sistem-ozellik', yedek = 0 WHERE id = 'h3-tersinir';
UPDATE questions SET kavram = 'sistem-ozellik', yedek = 0 WHERE id = 'h3-hafizasiz';
UPDATE questions SET kavram = 'sistem-ozellik', yedek = 0 WHERE id = 'h3-bibo';
UPDATE questions SET kavram = 'lti', yedek = 0 WHERE id = 'h3-lti-durtu';
UPDATE questions SET kavram = 'lti', yedek = 0 WHERE id = 'h3-kaskat';
UPDATE questions SET kavram = 'lti', yedek = 0 WHERE id = 'h3-lti-tanim';
UPDATE questions SET kavram = 'konvolusyon-toplam', yedek = 0 WHERE id = 'h4-tanim';
UPDATE questions SET kavram = 'konvolusyon-toplam', yedek = 0 WHERE id = 'h4-durtu-birim';
UPDATE questions SET kavram = 'konvolusyon-toplam', yedek = 0 WHERE id = 'h4-durtu-kaydir';
UPDATE questions SET kavram = 'konvolusyon-toplam', yedek = 0 WHERE id = 'h4-ilk-ornek';
UPDATE questions SET kavram = 'konvolusyon-toplam', yedek = 0 WHERE id = 'h4-lti-tek';
UPDATE questions SET kavram = 'konvolusyon-ozellik', yedek = 0 WHERE id = 'h4-degisme';
UPDATE questions SET kavram = 'konvolusyon-ozellik', yedek = 0 WHERE id = 'h4-kaskat';
UPDATE questions SET kavram = 'konvolusyon-ozellik', yedek = 0 WHERE id = 'h4-paralel';
UPDATE questions SET kavram = 'konvolusyon-ozellik', yedek = 0 WHERE id = 'h4-kaskat-hesap';
UPDATE questions SET kavram = 'konvolusyon-ozellik', yedek = 0 WHERE id = 'h4-paralel-hesap';
UPDATE questions SET kavram = 'dogrudan-hesap', yedek = 0 WHERE id = 'h4-geometrik';
UPDATE questions SET kavram = 'dogrudan-hesap', yedek = 0 WHERE id = 'h4-geo-sonlu';
UPDATE questions SET kavram = 'dogrudan-hesap', yedek = 0 WHERE id = 'h4-ustel-basamak';
UPDATE questions SET kavram = 'dogrudan-hesap', yedek = 0 WHERE id = 'h4-ustel-limit';
UPDATE questions SET kavram = 'dogrudan-hesap', yedek = 0 WHERE id = 'h4-iki-ustel';
UPDATE questions SET kavram = 'dogrudan-hesap', yedek = 0 WHERE id = 'h4-seri-n';
UPDATE questions SET kavram = 'konvolusyon-uzunluk', yedek = 0 WHERE id = 'h4-uzunluk';
UPDATE questions SET kavram = 'konvolusyon-uzunluk', yedek = 0 WHERE id = 'h4-aralik';
UPDATE questions SET kavram = 'konvolusyon-uzunluk', yedek = 0 WHERE id = 'h4-ilk-son';
UPDATE questions SET kavram = 'konvolusyon-uzunluk', yedek = 0 WHERE id = 'h4-uzunluk-tf';
UPDATE questions SET kavram = 'konvolusyon-uzunluk', yedek = 0 WHERE id = 'h4-sonsuz';
UPDATE questions SET kavram = 'grafik-yontem', yedek = 0 WHERE id = 'h4-grafik-adim';
UPDATE questions SET kavram = 'grafik-yontem', yedek = 0 WHERE id = 'h4-grafik-yon';
UPDATE questions SET kavram = 'grafik-yontem', yedek = 0 WHERE id = 'h4-grafik-hesap';
UPDATE questions SET kavram = 'grafik-yontem', yedek = 0 WHERE id = 'h4-grafik-negatif';
UPDATE questions SET kavram = 'grafik-yontem', yedek = 0 WHERE id = 'h4-tum-dizi';
UPDATE questions SET kavram = 'kaydirma-kurali', yedek = 0 WHERE id = 'h4-kaydirma-tum';
UPDATE questions SET kavram = 'kaydirma-kurali', yedek = 0 WHERE id = 'h4-kaydirma-ters';
UPDATE questions SET kavram = 'kaydirma-kurali', yedek = 0 WHERE id = 'h4-kaydirma-sayi';
UPDATE questions SET kavram = 'polinom-carpim', yedek = 0 WHERE id = 'h4-polinom';
UPDATE questions SET kavram = 'polinom-carpim', yedek = 0 WHERE id = 'h4-polinom-2';
UPDATE questions SET kavram = 'polinom-carpim', yedek = 0 WHERE id = 'h4-tablo-kosegen';
UPDATE questions SET kavram = 'polinom-carpim', yedek = 0 WHERE id = 'h4-matlab-conv';
UPDATE questions SET kavram = 'olasilik-konvolusyon', yedek = 0 WHERE id = 'h4-zar-7';
UPDATE questions SET kavram = 'olasilik-konvolusyon', yedek = 0 WHERE id = 'h4-zar-4';
UPDATE questions SET kavram = 'olasilik-konvolusyon', yedek = 0 WHERE id = 'h4-zar-sayi';
UPDATE questions SET kavram = 'olasilik-konvolusyon', yedek = 0 WHERE id = 'h4-zar-uc';
UPDATE questions SET kavram = 'olasilik-konvolusyon', yedek = 0 WHERE id = 'h4-hileli';
UPDATE questions SET kavram = 'olasilik-konvolusyon', yedek = 0 WHERE id = 'h4-pmf-tf';
UPDATE questions SET kavram = 'hareketli-ortalama', yedek = 0 WHERE id = 'h4-ma-katsayi';
UPDATE questions SET kavram = 'hareketli-ortalama', yedek = 0 WHERE id = 'h4-ma-cikis';
UPDATE questions SET kavram = 'hareketli-ortalama', yedek = 0 WHERE id = 'h4-ma-sabit';
UPDATE questions SET kavram = 'hareketli-ortalama', yedek = 0 WHERE id = 'h4-ma-gecikme';
UPDATE questions SET kavram = 'hareketli-ortalama', yedek = 0 WHERE id = 'h4-ma-buyuk';
UPDATE questions SET kavram = 'korelasyon', yedek = 0 WHERE id = 'h4-korelasyon-fark';
UPDATE questions SET kavram = 'korelasyon', yedek = 0 WHERE id = 'h4-otokor-0';
UPDATE questions SET kavram = 'korelasyon', yedek = 0 WHERE id = 'h4-otokor-1';
UPDATE questions SET kavram = 'korelasyon', yedek = 0 WHERE id = 'h4-otokor-simetri';
UPDATE questions SET kavram = 'korelasyon', yedek = 0 WHERE id = 'h4-otokor-ustel';
UPDATE questions SET kavram = 'adc-niceleme', yedek = 1 WHERE id = 't1-adc-16bit';
UPDATE questions SET kavram = 'adc-niceleme', yedek = 1 WHERE id = 't1-adc-fs';
UPDATE questions SET kavram = 'adc-niceleme', yedek = 1 WHERE id = 't1-adc-bir-bit';
UPDATE questions SET kavram = 'adc-niceleme', yedek = 1 WHERE id = 't1-adc-adim-12';
UPDATE questions SET kavram = 'sinyal-eksen', yedek = 0 WHERE id = 't1-alan-frekans';
UPDATE questions SET kavram = 'sinyal-eksen', yedek = 1 WHERE id = 't1-bagimsiz';
UPDATE questions SET kavram = 'ortalama-sapma', yedek = 1 WHERE id = 't1-ortalama-sapma-2';
UPDATE questions SET kavram = 'ortalama-sapma', yedek = 0 WHERE id = 't1-dc-eklemek';
UPDATE questions SET kavram = 'ortalama-sapma', yedek = 1 WHERE id = 't1-olcek';
UPDATE questions SET kavram = 'ortalama-sapma', yedek = 1 WHERE id = 't1-varyans-uc';
UPDATE questions SET kavram = 'rms', yedek = 0 WHERE id = 't1-vp-vrms';
UPDATE questions SET kavram = 'rms', yedek = 1 WHERE id = 't1-ucgen-vpp';
UPDATE questions SET kavram = 'rms', yedek = 1 WHERE id = 't1-rms-dc-sinus';
UPDATE questions SET kavram = 'rms', yedek = 1 WHERE id = 't1-rms-hangi';
UPDATE questions SET kavram = 'histogram-pmf', yedek = 1 WHERE id = 't1-pmf-toplam';
UPDATE questions SET kavram = 'histogram-pmf', yedek = 0 WHERE id = 't1-pmf-hist';
UPDATE questions SET kavram = 'histogram-pmf', yedek = 1 WHERE id = 't1-pdf-buyuk';
UPDATE questions SET kavram = 'histogram-pmf', yedek = 1 WHERE id = 't1-kutu-genislik';
UPDATE questions SET kavram = 'normal-dagilim', yedek = 0 WHERE id = 't1-gauss-95';
UPDATE questions SET kavram = 'normal-dagilim', yedek = 1 WHERE id = 't1-gauss-disari';
UPDATE questions SET kavram = 'gurultu-uretimi', yedek = 1 WHERE id = 't1-rnd-dort';
UPDATE questions SET kavram = 'gurultu-uretimi', yedek = 1 WHERE id = 't1-rnd-ortalama';
UPDATE questions SET kavram = 'kesinlik-dogruluk', yedek = 1 WHERE id = 't1-kesin-dogru-degil';
UPDATE questions SET kavram = 'kesinlik-dogruluk', yedek = 1 WHERE id = 't1-ortalama-n';
UPDATE questions SET kavram = 'matlab-temel', yedek = 1 WHERE id = 't2-inf';
UPDATE questions SET kavram = 'matlab-temel', yedek = 1 WHERE id = 't2-i-degisken';
UPDATE questions SET kavram = 'vektor-olusturma', yedek = 1 WHERE id = 't2-linspace-2';
UPDATE questions SET kavram = 'vektor-olusturma', yedek = 0 WHERE id = 't2-aralik-2';
UPDATE questions SET kavram = 'vektor-olusturma', yedek = 1 WHERE id = 't2-aralik-uzunluk-2';
UPDATE questions SET kavram = 'indeksleme', yedek = 1 WHERE id = 't2-ters';
UPDATE questions SET kavram = 'indeksleme', yedek = 1 WHERE id = 't2-indis-vektor';
UPDATE questions SET kavram = 'matris-indeks', yedek = 1 WHERE id = 't2-sutun';
UPDATE questions SET kavram = 'matris-indeks', yedek = 0 WHERE id = 't2-dogrusal-2';
UPDATE questions SET kavram = 'eleman-islem', yedek = 1 WHERE id = 't2-bolme';
UPDATE questions SET kavram = 'eleman-islem', yedek = 1 WHERE id = 't2-ic-carpim';
UPDATE questions SET kavram = 'eleman-islem', yedek = 0 WHERE id = 't2-boyut-hata';
UPDATE questions SET kavram = 'mantiksal', yedek = 1 WHERE id = 't2-sifirla';
UPDATE questions SET kavram = 'mantiksal', yedek = 1 WHERE id = 't2-veya-sayma';
UPDATE questions SET kavram = 'fonksiyon-tanim', yedek = 1 WHERE id = 't2-tek-cikis';
UPDATE questions SET kavram = 'rastgele-uretim', yedek = 1 WHERE id = 't2-rand-kare';
UPDATE questions SET kavram = 'rastgele-uretim', yedek = 1 WHERE id = 't2-randn-olcek';
UPDATE questions SET kavram = 'birlestirme', yedek = 1 WHERE id = 't2-yatay-boyut';
UPDATE questions SET kavram = 'birlestirme', yedek = 0 WHERE id = 't2-sifir-ekle';
UPDATE questions SET kavram = 'istatistik-boyut', yedek = 1 WHERE id = 't2-mean-satir';
UPDATE questions SET kavram = 'istatistik-boyut', yedek = 1 WHERE id = 't2-median-tek';
UPDATE questions SET kavram = 'istatistik-boyut', yedek = 1 WHERE id = 't2-var-pop';
UPDATE questions SET kavram = 'istatistik-boyut', yedek = 1 WHERE id = 't2-corr-sifir';
UPDATE questions SET kavram = 'temel-diziler', yedek = 1 WHERE id = 't3-pencere';
UPDATE questions SET kavram = 'temel-diziler', yedek = 1 WHERE id = 't3-durtu-toplam-2';
UPDATE questions SET kavram = 'temel-diziler', yedek = 1 WHERE id = 't3-basamak-deger';
UPDATE questions SET kavram = 'ustel-sinuzoidal', yedek = 1 WHERE id = 't3-ustel-buyur';
UPDATE questions SET kavram = 'ustel-sinuzoidal', yedek = 1 WHERE id = 't3-sinus-faz';
UPDATE questions SET kavram = 'periyodiklik', yedek = 0 WHERE id = 't3-periyot-2';
UPDATE questions SET kavram = 'periyodiklik', yedek = 1 WHERE id = 't3-periyot-ekok';
UPDATE questions SET kavram = 'periyodiklik', yedek = 1 WHERE id = 't3-periyot-k-2';
UPDATE questions SET kavram = 'simetri', yedek = 1 WHERE id = 't3-cift-kisim-2';
UPDATE questions SET kavram = 'simetri', yedek = 1 WHERE id = 't3-tek-ornek';
UPDATE questions SET kavram = 'sinyal-donusum', yedek = 1 WHERE id = 't3-gecikme';
UPDATE questions SET kavram = 'sinyal-donusum', yedek = 0 WHERE id = 't3-ters-konum';
UPDATE questions SET kavram = 'sinyal-donusum', yedek = 1 WHERE id = 't3-seyrelt-kayip';
UPDATE questions SET kavram = 'enerji-guc', yedek = 1 WHERE id = 't3-enerji-2';
UPDATE questions SET kavram = 'enerji-guc', yedek = 1 WHERE id = 't3-guc-cos';
UPDATE questions SET kavram = 'enerji-guc', yedek = 1 WHERE id = 't3-enerji-guc';
UPDATE questions SET kavram = 'dogrusallik', yedek = 1 WHERE id = 't3-dogrusal-degil';
UPDATE questions SET kavram = 'sistem-ozellik', yedek = 0 WHERE id = 't3-statik';
UPDATE questions SET kavram = 'sistem-ozellik', yedek = 1 WHERE id = 't3-zaman-degismez';
UPDATE questions SET kavram = 'sistem-ozellik', yedek = 1 WHERE id = 't3-kararli';
UPDATE questions SET kavram = 'lti', yedek = 1 WHERE id = 't3-lti-durtu-2';
UPDATE questions SET kavram = 'konvolusyon-toplam', yedek = 1 WHERE id = 't4-durtu-kaydir-2';
UPDATE questions SET kavram = 'konvolusyon-toplam', yedek = 1 WHERE id = 't4-ilk-ornek-2';
UPDATE questions SET kavram = 'konvolusyon-ozellik', yedek = 1 WHERE id = 't4-kaskat-hesap-2';
UPDATE questions SET kavram = 'konvolusyon-ozellik', yedek = 1 WHERE id = 't4-paralel-hesap-2';
UPDATE questions SET kavram = 'konvolusyon-ozellik', yedek = 1 WHERE id = 't4-dagilma';
UPDATE questions SET kavram = 'dogrudan-hesap', yedek = 1 WHERE id = 't4-geometrik-2';
UPDATE questions SET kavram = 'dogrudan-hesap', yedek = 1 WHERE id = 't4-ustel-basamak-2';
UPDATE questions SET kavram = 'dogrudan-hesap', yedek = 1 WHERE id = 't4-ustel-limit-2';
UPDATE questions SET kavram = 'konvolusyon-uzunluk', yedek = 1 WHERE id = 't4-uzunluk-2';
UPDATE questions SET kavram = 'konvolusyon-uzunluk', yedek = 1 WHERE id = 't4-aralik-2';
UPDATE questions SET kavram = 'grafik-yontem', yedek = 1 WHERE id = 't4-grafik-hesap-2';
UPDATE questions SET kavram = 'kaydirma-kurali', yedek = 1 WHERE id = 't4-kaydirma-2';
UPDATE questions SET kavram = 'polinom-carpim', yedek = 1 WHERE id = 't4-polinom-3';
UPDATE questions SET kavram = 'olasilik-konvolusyon', yedek = 1 WHERE id = 't4-zar-10';
UPDATE questions SET kavram = 'olasilik-konvolusyon', yedek = 1 WHERE id = 't4-zar-2';
UPDATE questions SET kavram = 'hareketli-ortalama', yedek = 1 WHERE id = 't4-ma-katsayi-2';
UPDATE questions SET kavram = 'hareketli-ortalama', yedek = 1 WHERE id = 't4-ma-gecikme-2';
UPDATE questions SET kavram = 'korelasyon', yedek = 1 WHERE id = 't4-otokor-0-2';
UPDATE questions SET kavram = 'korelasyon', yedek = 1 WHERE id = 't4-otokor-ustel-2';
UPDATE questions SET kavram = 'korelasyon', yedek = 1 WHERE id = 't4-korelasyon-degisme';
