(SELECT Country 
FROM w3schools.customers)
UNION
(SELECT Country
FROM w3schools.suppliers)
ORDER BY Country
LIMIT 5;
