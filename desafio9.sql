SELECT CONCAT(employees.FirstName, ' ',employees.LastName) AS `Nome Completo`,
COUNT(orders.OrderID) AS `Total de pedidos`
FROM w3schools.orders AS orders
INNER JOIN w3schools.employees AS employees ON employees.EmployeeID = orders.EmployeeId
GROUP BY employees.EmployeeID
ORDER BY `Total de pedidos`;
