SELECT c1.contactName AS 'Nome', 
c1.country AS 'País',
COUNT(c2.country) AS 'Número de compatriotas'
FROM w3schools.customers AS c1,
w3schools.customers AS c2
WHERE c1.country = c2.country AND c1.customerID <> c2.customerID
GROUP BY `Nome`, `País`
ORDER BY `Nome`;
