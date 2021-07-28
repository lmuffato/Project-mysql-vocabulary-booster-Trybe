SELECT Country AS 'País' FROM customers
UNION
Select Country AS 'País' FROM suppliers
ORDER BY `País`
LIMIT 5;
