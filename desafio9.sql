SELECT CONCAT(emp.FirstName, ' ', emp.LastName) AS 'Nome completo',
	COUNT(orders.OrderID) AS 'Total de pedidos'
FROM employees AS emp, orders AS orders
WHERE orders.EmployeeID = emp.EmployeeID
GROUP BY orders.EmployeeID
ORDER BY COUNT(orders.OrderID);
