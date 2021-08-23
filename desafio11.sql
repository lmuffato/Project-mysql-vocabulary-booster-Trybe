SELECT Nome, País, Quantidade AS 'Número de compatriotas' FROM (
SELECT c1.ContactName AS 'Nome', c1.Country AS 'País', COUNT(c2.Country) - 1 AS 'Quantidade'
FROM customers AS c1, customers AS c2
WHERE c1.Country = c2.Country
GROUP BY c1.ContactName, c1.Country
ORDER BY c1.ContactName) AS compatriotas
WHERE compatriotas.Quantidade != 0;
