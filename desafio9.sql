SELECT CONCAT(employees.FirstName, ' ', employees.LastName) AS `Nome completo`,
COUNT(order_details.Quantity) as `Total de pedidos`
FROM w3schools.employees employees
INNER JOIN w3schools.orders orders
    ON orders.EmployeeID = employees.EmployeeID
INNER JOIN w3schools.order_details order_details
    ON order_details.OrderID = orders.OrderID
GROUP BY `Nome completo`
ORDER BY `Total de pedidos`;
