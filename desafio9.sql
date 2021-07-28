SELECT
CONCAT(ce.FirstName, " ", ce.LastName) AS `Nome completo`,
COUNT(co.employeeID)AS `Total de pedidos`
FROM w3schools.employees AS ce
INNER JOIN w3schools.orders AS co
ON ce.EmployeeID = co.EmployeeID
GROUP BY ce.EmployeeID
ORDER BY 2;
