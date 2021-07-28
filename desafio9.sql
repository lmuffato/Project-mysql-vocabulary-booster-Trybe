SELECT
	CONCAT(e.FirstName, ' ', e.LastName) AS `Nome completo`,
    COUNT(o.OrderID) AS `Total de pedidos`
FROM
	employees AS e
JOIN
	orders AS o
ON
	e.EmployeeID = o.EmployeeID
GROUP BY
	e.EmployeeID
ORDER BY
	`Total de pedidos`;
