SELECT c1.country AS País, c1.ContactName AS Nome ,  COUNT(c1.country) - 1 AS 'Número de compatriotas' 
FROM w3schools.customers AS c1, w3schools.customers AS c2
WHERE c1.country = c2.country
GROUP BY c1.ContactName, c1.country
HAVING (COUNT(c1.country) - 1) >= 1
ORDER BY `Nome`
;
