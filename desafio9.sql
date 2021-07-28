-- 9. Exibe todos as pessoas funcionárias que já realizaram algum pedido, mostrando também seu total de pedidos feitos
SELECT
CONCAT(e.firstName, ' ', e.lastName)
AS
'Nome completo',
COUNT(o.employeeID)
AS 
'Total de pedidos'
FROM w3schools.employees
AS e
INNER JOIN w3schools.orders
AS o
ON e.employeeID = o.employeeID
GROUP BY e.employeeID
ORDER BY COUNT(o.employeeID) ASC;
