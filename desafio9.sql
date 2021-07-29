SELECT CONCAT(employees.FirstName, ' ', employees.LastName) AS 'Nome completo',
COUNT(orders.EmployeeID) AS 'Total de pedidos'
FROM employees AS employees
INNER jOIN orders AS orders
ON employees.EmployeeID = orders.EmployeeID
GROUP BY `Nome completo`
ORDER BY `Total de pedidos`;
