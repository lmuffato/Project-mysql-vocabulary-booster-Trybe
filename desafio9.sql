-- challenge 09;

SELECT CONCAT(FirstName, ' ', LastName) AS `Nome completo`,
COUNT(employees.EmployeeID) AS `Total de pedidos`
FROM w3schools.employees AS employees
INNER JOIN w3schools.orders AS orders
ON orders.EmployeeID=employees.EmployeeID
GROUP BY `Nome completo`
ORDER BY `Total de pedidos`;
