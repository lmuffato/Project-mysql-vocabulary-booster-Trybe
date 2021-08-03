USE w3schools;
(SELECT Country AS 'País' FROM  customers)
UNION(SELECT Country FROM suppliers)
ORDER BY `País` LIMIT 5
