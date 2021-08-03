SELECT CONCAT(employees.FirstName, ' ', employees.LastName) AS 'Nome completo',
COUNT(orders.EmployeeID) AS 'Total de pedidos'
FROM w3schools.employees AS employees
INNER JOIN orders AS orders
ON orders.EmployeeID = employees.EmployeeID
WHERE employees.EmployeeID = orders.EmployeeID
GROUP BY `Nome completo`
ORDER BY `Total de pedidos`;

-- Link explicando sobre usar INNER JOIN com WHERE:
-- https://pt.stackoverflow.com/questions/166025/usando-where-com-inner-join
