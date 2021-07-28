SELECT CONCAT(emp.FirstName,' ',emp.LastName) AS 'Nome completo',
  COUNT(*) AS 'Total de pedidos'
FROM w3schools.employees AS emp
  INNER JOIN w3schools.orders AS o
    ON emp.EmployeeID = o.EmployeeID
  GROUP BY `Nome completo`
ORDER BY COUNT(*);
