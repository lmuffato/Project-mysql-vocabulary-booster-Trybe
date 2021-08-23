SELECT
CONCAT(employees.FirstName, " ", employees.LastName) `Nome completo`,
COUNT(orders.OrderID) `Total de pedidos`
FROM w3schools.employees as employees
INNER JOIN w3schools.orders `orders` ON employees.EmployeeID = orders.EmployeeID
GROUP BY orders.EmployeeID
ORDER BY COUNT(orders.OrderID);
