SELECT 
    c1.ContactName AS 'Nome',
    c1.Country AS 'País',
    (SELECT 
            COUNT(*)
        FROM
            w3schools.customers AS c2
        WHERE
            c1.Country = c2.Country
                AND c1.CustomerID <> c2.CustomerID ) AS 'Número de compatriotas'
FROM
    w3schools.customers AS c1
GROUP BY c1.ContactName, c1.Country, `Número de compatriotas`
HAVING `Número de compatriotas` > 0
ORDER BY c1.ContactName ASC;
