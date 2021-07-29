SELECT 
    country
FROM
    w3schools.customers 
UNION SELECT 
    country
FROM
    w3schools.suppliers
ORDER BY country
LIMIT 5;
