-- Solução encontrada após consultar o código de Patrick Morais - Turma 10-A
SELECT CONCAT(e.FirstName, " ", e.LastName) AS `Nome completo`,
  COUNT(e.FirstName) AS `Total de pedidos`
FROM w3schools.orders o
INNER JOIN w3schools.employees e
  ON o.EmployeeID = e.EmployeeID
GROUP BY `Nome completo`
ORDER BY `Total de pedidos` ASC;
