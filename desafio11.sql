SELECT 
t1.ContactName AS `Nome`,
t1.Country AS `País`,
(
SELECT COUNT(c.ContactName)
FROM w3schools.customers AS c
WHERE c.Country = `País` AND c.ContactName <> `Nome`
) AS `Número de compatriotas`
FROM
w3schools.customers AS t1
HAVING
`Número de compatriotas` > 0
ORDER BY
Nome;
