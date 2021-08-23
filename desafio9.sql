SELECT CONCAT(employees.FirstName, ' ', employees.LastName) AS `Nome completo`,
COUNT(orders.OrderID) as `Total de pedidos`
FROM w3schools.employees employees
INNER JOIN w3schools.orders orders
    ON orders.EmployeeID = employees.EmployeeID
GROUP BY `Nome completo` ORDER BY `Total de pedidos`;
