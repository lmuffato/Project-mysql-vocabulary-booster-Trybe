SELECT t1.CustomerName AS 'Nome', t1.Country AS 'País', COUNT(t1.CustomerName) -1 AS 'Número de compatriotas'
FROM w3schools.customers AS t1, w3schools.customers AS t2
WHERE t1.Country = t2.Country 
GROUP BY t1.CustomerName, t1.Country
HAVING `Número de compatriotas` > 0
ORDER BY `Nome`;
