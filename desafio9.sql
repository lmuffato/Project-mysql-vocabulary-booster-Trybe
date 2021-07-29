-- Exibe todos as pessoas funcionárias que já realizaram algum pedido, mostrando também seu total de pedidos feitos

SELECT CONCAT(e.FirstName, ' ', e.LastName) `Nome completo`,
COUNT(o.EmployeeID) `Total de pedidos`
FROM w3schools.employees AS e
INNER JOIN w3schools.orders AS o
ON e.EmployeeID = o.EmployeeID
GROUP BY `Nome completo`
ORDER BY `Total de pedidos` ASC;
