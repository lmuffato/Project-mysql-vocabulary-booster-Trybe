SELECT
    c1.contactName Nome,
    c1.country País,
    COUNT(c2.country) 'Número de compatriotas'
FROM
    w3schools.customers c1,
    w3schools.customers c2
WHERE
    c1.country = c2.country
AND
    c1.customerID <> c2.customerId
GROUP BY
    1
ORDER BY
    1;
