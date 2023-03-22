# Запрос на выборку данных из нескольких таблиц с пояснениями к каждой строке запроса.
SELECT oc.Name, c.Number, c.Date, s.Name as SourceBudgetName, cp.PaymentType, cp.FactDate, cp.FactSum
# Выбираем название объекта контроля, номер контракта, дату контракта, название источника бюджета, тип платежа, фактическую дату платежа, фактическую сумму платежа
FROM ObjectOfConrol oc 
# Выбираем данные из таблицы "ObjectOfControl" через внутреннее соединение с таблицей "Contract". При этом Id из таблицы "ObjectOfControl" должен соответсвовать полю "ObjectOfControl" таблицы "Contract"
INNER JOIN Contract c ON oc.Id = c.ObjectOfControl 
# Выбираем данные из таблицы "ContractFulfliment" через внутреннее соединение с таблицей "Contract". При этом Id из таблицы "Contract" должен соответсвовать полю "Contract" таблицы "ContractFulfliment"
INNER JOIN ContractFulfliment cf ON c.Id = cf.Contract 
# Выбираем данные из таблицы "ContractPayment" через внутреннее соединение с таблицей "Contract". При этом Id из таблицы "Contract" должен соответсвовать полю "Contract" таблицы "ContractPayment"
INNER JOIN ContractPayment cp ON c.Id = cp.Contract 
# Выбираем данные из таблицы "SourceBudget" через внутреннее соединение с таблицей "ContractPayment". При этом SourceBudget из таблицы "ContractPayment" должен соответсвовать полю "Id" таблицы "SourceBudget"
INNER JOIN SourceBudget s ON cp.SourceBudget = s.Id 
# Накладываем ограничения на выборку: контракт должен быть расторгнут, и код источника бюджета должен быть равен 'Местный бюджет'
WHERE c.Status = 'Расторгнут' AND s.Code = 'Местный бюджет';