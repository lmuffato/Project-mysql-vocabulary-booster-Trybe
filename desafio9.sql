SELECT CONCAT(employee.FirstName, ' ', employee.LastName) AS 'Nome completo', COUNT(*) AS 'Total de pedidos'
FROM w3schools.employees AS employee
INNER JOIN w3schools.orders AS employee_order
ON employee.EmployeeID = employee_order.EmployeeID
GROUP BY CONCAT(employee.FirstName, ' ', employee.LastName)
ORDER BY COUNT(*);
