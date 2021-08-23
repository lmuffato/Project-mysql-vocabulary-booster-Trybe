SELECT customers.ContactName AS 'Nome', customers.Country AS 'País', COUNT(*) AS 'Número de compatriotas'
FROM w3schools.customers AS customers, w3schools.customers AS customers2
WHERE customers.Country = customers2.Country
AND customers.ContactName <> customers2.ContactName
GROUP BY `Nome`, `País`
ORDER BY `Nome` ASC;
-- solução do colega Mateus Victor--
