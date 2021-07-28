SELECT T1.contactName AS `Nome`,
T1.country AS `País`,
COUNT(T1.contactName) AS `Número de compatriotas`
FROM w3schools.customers AS T1, w3schools.customers AS T2
WHERE T1.country = T2.country
GROUP BY T1.customerID
ORDER BY `Nome` ASC;
