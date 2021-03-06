/* 9 - Exibe todos as pessoas funcionárias que já realizaram algum pedido,
mostrando também seu total de pedidos feitos. */
SELECT
  CONCAT(emp.FirstName, ' ', emp.LastName) AS `Nome completo`,
  COUNT(ord.EmployeeID) AS 'Total de pedidos'
FROM w3schools.employees AS emp
INNER JOIN w3schools.orders AS ord
  ON emp.EmployeeID = ord.EmployeeID
GROUP BY `Nome completo`
ORDER BY `Total de pedidos`;
