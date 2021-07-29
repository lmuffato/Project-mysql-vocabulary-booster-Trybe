-- Carlos Gabriel Campos auxiliou no Having
SELECT 
  c1.ContactName AS 'Nome',
  c1.Country AS 'País',
  COUNT(c1.Country)-1
AS 'Número de compatriotas'
FROM w3schools.customers c1, w3schools.customers c2
WHERE c1.Country = c2.Country
GROUP BY `País`, `Nome`
HAVING `Número de compatriotas` > 0
ORDER BY `Nome`;
