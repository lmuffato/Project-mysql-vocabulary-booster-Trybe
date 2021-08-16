SELECT c.ContactName AS 'Nome',
c.Country AS 'País',
COUNT(c.Country) AS 'Número de compatriotas'
FROM w3schools.customers AS c
INNER JOIN w3schools.customers AS nc ON nc.Country = c.Country AND nc.CustomerID != c.CustomerID
GROUP BY 1, 2
ORDER BY 1;
