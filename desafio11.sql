SELECT 
    c1.ContactName AS Nome,
    c1.Country AS País,
    COUNT(c1.Country) AS 'Número de compatriotas'
FROM
    w3schools.customers c1,
    w3schools.customers c2
WHERE
    c1.CustomerID <> c2.CustomerID
        AND c1.Country = c2.Country
GROUP BY 1 , 2
ORDER BY 1;
