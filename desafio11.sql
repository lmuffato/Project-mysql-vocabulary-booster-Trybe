SELECT a.ContactName AS 'Nome',
a.Country AS 'País',
COUNT(a.CustomerID) - 1 AS 'Número de compatriotas'
FROM customers AS a, customers AS b
WHERE a.Country = b.Country
GROUP BY a.Country, a.ContactName
HAVING `Número de compatriotas` > 0 
ORDER BY `Nome`;
