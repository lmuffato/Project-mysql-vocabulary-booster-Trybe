SELECT
tc.ContactName AS `Nome`,
tc.Country AS `País`,
COUNT(tc.Country) AS `Número de compatriotas`
FROM w3schools.customers AS tc,
w3schools.customers AS tc2
WHERE tc.Country = tc2.Country AND tc.ContactName<>tc2.ContactName
GROUP BY tc.ContactName, tc2.Country
ORDER BY 1;
