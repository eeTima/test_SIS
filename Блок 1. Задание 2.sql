# Выбрать год из даты контракта и сумму стоимости объекта контроля
SELECT EXTRACT(YEAR FROM c.Date) AS Year, SUM(o.COST) AS TotalCost
# Из таблицы Контракт соединить таблицу Объектов контроля по идентификаторам объектов контроля
FROM Contract c
JOIN ObjectOfConrol o ON c.ObjectOfControl = o.Id
# Сгруппировать результаты по году
GROUP BY Year
# Отсортировать по возрастанию года
ORDER BY Year ASC;