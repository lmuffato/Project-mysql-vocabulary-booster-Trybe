SELECT 
    tab1.ContactName AS 'Nome',
    tab1.Country AS 'País',
    (SELECT 
            COUNT(tab2.ContactName)
        FROM
            w3schools.customers AS tab2
        WHERE
            tab1.Country = tab2.Country
                AND tab1.ContactName <> tab2.ContactName) AS 'Número de compatriotas'
FROM
    w3schools.customers AS tab1
GROUP BY Nome , País
HAVING `Número de compatriotas` > 0
ORDER BY Nome;
