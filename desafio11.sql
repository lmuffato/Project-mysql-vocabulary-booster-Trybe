SELECT
    custom1.ContactName AS 'Nome',
    custom1.Country AS 'País',
    COUNT(custom1.Country) - 1 AS 'Número de compatriotas' 
FROM
    w3schools.customers AS custom1,
    w3schools.customers AS custom2 
WHERE
    custom1.Country = custom2.Country 
GROUP BY
    custom1.Country,
    custom1.ContactName 
HAVING
    (
        COUNT(custom1.Country) - 1
    ) > 0 
ORDER BY
    custom1.ContactName;
