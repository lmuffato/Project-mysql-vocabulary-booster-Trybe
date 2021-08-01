SELECT
t1.contactName AS `Nome`,
t1.country AS `País`,
COUNT(t1.country) AS `Número de compatriotas`
FROM w3schools.customers AS t1, w3schools.customers AS t2
WHERE t1.country = t2.country AND t1.contactName <> t2.contactName
GROUP BY t1.customerID
ORDER BY `Nome` ASC;
