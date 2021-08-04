SELECT CONCAT(Employees.FirstName, ' ', Employees.LastName) AS 'Nome completo',
  COUNT(*) AS 'Total de pedidos'
FROM w3schools.employees AS Employees
  INNER JOIN w3schools.orders AS Orders ON Employees.EmployeeID = Orders.EmployeeID
GROUP BY `Nome completo`
ORDER BY `Total de pedidos`;
