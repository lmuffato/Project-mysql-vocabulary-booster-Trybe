SELECT CONCAT(n.FirstName, " ", n.LastName) AS `Nome completo`,
COUNT(o.EmployeeID) AS `Total de pedidos`
FROM w3schools.orders AS o
INNER JOIN w3schools.employees AS n
ON o.EmployeeID = n.EmployeeID
GROUP BY o.EmployeeID
ORDER BY 2;
