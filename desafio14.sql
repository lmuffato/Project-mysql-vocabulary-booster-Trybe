SELECT 
    Country AS País 
FROM w3schools.suppliers
UNION
SELECT 
    Country AS País 
FROM w3schools.customers
ORDER BY 1
LIMIT 5;
