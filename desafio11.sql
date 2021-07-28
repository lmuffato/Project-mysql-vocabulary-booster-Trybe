SELECT c1.ContactName AS Nome,
c1.Country AS País,
COUNT(c2.Country) - 1 AS 'Número de compatriotas' 
FROM customers AS c1, customers AS c2
WHERE c1.Country = c2.Country
GROUP BY c1.Country, c1.ContactName
HAVING `Número de compatriotas` >= 1
ORDER BY Nome;
