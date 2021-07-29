SELECT CONCAT(employees.FirstName, ' ', employees.LastName) AS 'Nome Completo', COUNT(*) AS 'Total de pedidos'
FROM w3schools.employees AS employees INNER JOIN w3schools.orders AS orders ON orders.EmployeeID = employees.EmployeeID
GROUP BY `Nome completo`
ORDER BY `Total de pedidos` ASC;
