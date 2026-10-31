-- Bu dosya scripts/sorular-sql.ts ile content/sorular'dan üretildi, elle düzenlemeyin.

INSERT INTO topics (id, title, week, sort) VALUES ('dsp-giris', 'DSP''ye giriş: sürekli ve ayrık sinyaller', 1, 1)
  ON CONFLICT(id) DO UPDATE SET title = excluded.title, week = excluded.week, sort = excluded.sort;
INSERT INTO topics (id, title, week, sort) VALUES ('istatistik', 'Ortalama, standart sapma ve rms', 1, 2)
  ON CONFLICT(id) DO UPDATE SET title = excluded.title, week = excluded.week, sort = excluded.sort;
INSERT INTO topics (id, title, week, sort) VALUES ('olasilik', 'Histogram, pmf, pdf ve normal dağılım', 1, 3)
  ON CONFLICT(id) DO UPDATE SET title = excluded.title, week = excluded.week, sort = excluded.sort;
INSERT INTO topics (id, title, week, sort) VALUES ('gurultu-dogruluk', 'Gürültü üretimi, kesinlik ve doğruluk', 1, 4)
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
