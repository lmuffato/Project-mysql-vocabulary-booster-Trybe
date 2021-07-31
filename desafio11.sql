SELECT
a.contactName AS `Nome`,
a.country AS `País`,
COUNT(a.country) AS `Número de compatriotas`
FROM w3schools.customers AS a
INNER JOIN w3schools.customers AS b
ON a.contactName != b.contactName
AND a.country = b.country
GROUP BY a.contactName, b.country
ORDER BY `Nome`;
