SELECT c1.ContactName AS 'Nome',
c1.Country AS 'País',
(SELECT COUNT(*)
FROM customers AS c2 
WHERE c2.Country = c1.Country
AND c2.ContactName <> c1.ContactName) AS 'Número de compatriotas'
FROM customers AS c1
HAVING `Número de compatriotas` > 0
ORDER BY `Nome`;
