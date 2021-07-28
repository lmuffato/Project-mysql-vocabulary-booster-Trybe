-- 9 - Exibe todos as pessoas funcionárias que já realizaram algum pedido, mostrando também seu total de pedidos feitos
SELECT CONCAT(FirstName, ' ', LastName) AS `Nome completo`,
COUNT(OrderID)  AS `Total de pedidos`
FROM w3schools.employees AS c
INNER JOIN w3schools.orders AS o
ON o.EmployeeID = c.EmployeeID
GROUP BY `Nome completo`
ORDER BY `Total de pedidos`;
