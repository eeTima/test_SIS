# Выборка данных из таблицы ObjectOfControl
SELECT CONCAT('[{', CAST(Code AS VARCHAR(10)), '}] ', Name) AS ObjectOfControl
# Формирование новой колонки с названием ObjectOfControl. В новой колонке будет конкатернироваться код с названием объекта.
FROM ObjectOfConrol
# Указание таблицы
WHERE COST <> 0;
# Отбор только тех строк, в которых значение столбца "COST" не равно 0.