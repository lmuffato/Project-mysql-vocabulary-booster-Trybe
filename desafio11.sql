SELECT usual.ContactName AS `Nome`, usual.Country AS `País`,
COUNT(*) AS `Número de compatriotas`
FROM w3schools.customers usual, w3schools.customers diff
WHERE usual.Country = diff.Country AND usual.ContactName != diff.ContactName
GROUP BY `Nome`, `País` ORDER BY `Nome`;
