SELECT Country FROM customers
UNION
Select Country FROM suppliers
ORDER BY Country
LIMIT 5;
