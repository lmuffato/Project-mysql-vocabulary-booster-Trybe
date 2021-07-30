SELECT c.ContactName AS Nome,
c.Country AS País,
COUNT(ct.Country) -1 AS `Número de compatriotas`
FROM w3schools.customers AS c, w3schools.customers AS ct
WHERE c.Country = ct.Country
GROUP BY Nome, País
HAVING `Número de compatriotas` >= 1
ORDER BY `Nome`
