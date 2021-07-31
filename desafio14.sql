SELECT customers.Country AS 'País'
FROM customers AS customers, suppliers AS suppliers
WHERE customers.Country <> suppliers.Country
GROUP BY `País`
ORDER BY `País`
LIMIT 5;
