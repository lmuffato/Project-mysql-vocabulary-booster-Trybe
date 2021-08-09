-- challenge 9;

SELECT CONCAT(FirstName, ' ', LastName) AS `Nome completo`,
COUNT(Quantity) AS `Total de pedidos`
FROM w3schools.employees AS employees
INNER JOIN w3schools.orders AS orders
ON orders.EmployeeID=employees.EmployeeID
INNER JOIN w3schools.order_details AS orderDetails
ON orderDetails.OrderID=orders.OrderID
GROUP BY `Nome completo`
ORDER BY `Total de pedidos` ASC;
