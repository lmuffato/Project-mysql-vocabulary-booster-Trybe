SELECT 
    cst1.ContactName AS 'Nome',
    cst1.Country AS 'País',
    COUNT(cst2.CustomerName) AS 'Número de compatriotas'
FROM
    w3schools.customers AS cst1,
    w3schools.customers AS cst2
WHERE
    cst1.Country = cst2.Country
        AND cst1.CustomerID <> cst2.CustomerID
GROUP BY cst1.CustomerID
ORDER BY cst1.ContactName;
