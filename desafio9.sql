SELECT 
	CONCAT(emp.FirstName, ' ', emp.LastName) AS 'Nome completo',
	COUNT(orders.OrderID) AS 'Total de pedidos'
FROM 
	w3schools.employees AS emp, 
	w3schools.orders AS orders
WHERE orders.EmployeeID = emp.EmployeeID
GROUP BY orders.EmployeeID
ORDER BY COUNT(orders.OrderID);
