SELECT 
    nm.ContactName AS 'Nome',
    nm.Country AS 'País',
    COUNT(nm.Country) AS 'Número de compatriotas'
FROM
    w3schools.customers AS nm,
    w3schools.customers AS comp
WHERE
    nm.ContactName <> comp.ContactName
    AND nm.Country = comp.Country
GROUP BY `Nome` , `País`
ORDER BY `Nome`;
