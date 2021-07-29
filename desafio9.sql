SELECT
  CONCAT(e.FirstName, ' ', e.LastName) AS 'Nome completo',
  COUNT(o.OrderID) AS 'Total de pedidos'
FROM
  orders AS o
INNER JOIN
  employees e ON o.EmployeeID = e.EmployeeID
GROUP BY 
  e.EmployeeID
ORDER BY
  `Total de pedidos`;
