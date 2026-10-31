-- 5. haftanın soruları havuzda ve tekrarda görünsün. Yönetim panelinden daha
-- ileri bir hafta açılmışsa ona dokunulmaz.
UPDATE settings SET value = '5' WHERE key = 'current_week' AND CAST(value AS INTEGER) < 5;
