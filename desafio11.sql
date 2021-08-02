SELECT c1.ContactName AS 'Nome', c1.Country AS 'País',
    COUNT(c2.ContactName) AS `Número de compatriotas`
FROM
    w3schools.customers c1,
    w3schools.customers c2
WHERE
    c1.Country = c2.Country
        AND c1.ContactName <> c2.ContactName
GROUP BY `Nome`, `País` ORDER BY `Nome`;
