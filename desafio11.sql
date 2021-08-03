SELECT
    c1.contactName Nome,
    c1.country País,
    COUNT(c2.country) - 1 'Número de compatriotas'
FROM
    w3schools.customers c1
INNER JOIN
    w3schools.customers c2
ON
    c1.country = c2.country
GROUP BY
    1
ORDER BY
    1;
