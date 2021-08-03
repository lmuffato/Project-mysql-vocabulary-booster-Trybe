(SELECT Country as 'País'
FROM w3schools.customers)
UNION 
(SELECT Country as 'País'
FROM w3schools.suppliers)
ORDER BY `País` LIMIT 5;
