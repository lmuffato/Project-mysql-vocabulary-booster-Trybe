SELECT customers1.ContactName AS 'Nome',
customers2.Country AS 'País',
COUNT(customers2.Country) - 1 AS 'Número de compatriotas'
FROM w3schools.customers AS customers1, w3schools.customers AS customers2
WHERE customers1.Country = customers2.Country
GROUP BY `País`, `Nome`
HAVING COUNT(customers2.Country) - 1 > 0
ORDER BY customers1.ContactName;
