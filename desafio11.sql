SELECT c1.ContactName AS Nome,
c1.Country AS País,
CAST(SUM(c1.Country = c2.Country) AS UNSIGNED) - 1 AS 'Número de compatriotas'
FROM w3schools.customers AS c1, w3schools.customers AS c2
GROUP BY Nome, País
HAVING (SUM(c1.Country = c2.Country) - 1) > 0
ORDER BY Nome;
