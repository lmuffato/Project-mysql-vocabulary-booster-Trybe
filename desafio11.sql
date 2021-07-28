SELECT
	c.ContactName AS `Nome`,
    c.Country AS `País`,
    COUNT(cc.CustomerID) AS `Número de compatriotas`
FROM
	customers AS c
JOIN
	customers AS cc
ON
	c.Country = cc.Country
WHERE
	c.CustomerID != cc.CustomerID
GROUP BY
	c.CustomerID
HAVING
	`Número de compatriotas` > 0
ORDER BY
	c.ContactName;
