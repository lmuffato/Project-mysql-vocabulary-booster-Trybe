SELECT
  CONCAT(EmplTab.FirstName, ' ', EmplTab.LastName) AS 'Nome completo',
  COUNT(*) AS 'Total de pedidos'
FROM w3schools.employees AS EmplTab
INNER JOIN w3schools.orders AS OrdTab ON EmplTab.EmployeeID = OrdTab.EmployeeID
GROUP BY `Nome completo` ORDER BY `Total de pedidos`;
