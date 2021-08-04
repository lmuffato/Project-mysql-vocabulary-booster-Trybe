SELECT c1.ContactName AS 'Nome', c1.Country AS 'País',
COUNT(c1.Country) - 1 AS 'Número de compatriotas'
FROM w3schools.customers as c1, w3schools.customers as c2
WHERE c1.Country = c2.Country
GROUP BY 1, 2
HAVING 3 != 0
ORDER BY 1;