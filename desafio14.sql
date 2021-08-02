
SELECT Country AS `País` FROM customers
UNION
SELECT Country AS `País` FROM suppliers
ORDER BY `País`
Limit 5;
