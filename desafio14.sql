SELECT DISTINCT sup.Country AS 'País'
FROM suppliers AS sup, customers as cust
WHERE cust.Country = sup.Country
LIMIT 5;
