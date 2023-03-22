# Обновляет значение поля personCode таблицы template, устанавливая 5 вместо 3 там, где значение поля personCode было равно 3
UPDATE template SET personCode=5 WHERE personCode=3;

# Обновляет значение поля personCode таблицы template, устанавливая 10 вместо 2 там, где значение поля personCode было равно 2
UPDATE template SET personCode=10 WHERE personCode=2;

# Удаляет из таблицы persondict строку, где значение поля Code равно 3
DELETE FROM persondict WHERE Code=3;

# Добавляет в таблицу persondict новую строку со значениями полей 10, 010, 'Мельников', 'Платон', 'Натанович', '1984-05-01'
INSERT INTO persondict VALUES (10, 010, 'Мельников', 'Платон', 'Натанович', '1984-05-01');

# Добавляет в таблицу template новую строку со значениями полей 001 и 010 для полей teamCode и personCode соответственно
INSERT INTO template (teamCode, personCode) VALUES (001, 010);