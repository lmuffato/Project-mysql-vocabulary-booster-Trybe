SELECT
  CONCAT(E.FirstName, ' ', LastName) AS 'Nome completo',
  COUNT(*) AS 'Total de pedidos'
FROM 
  w3schools.employees AS E
INNER JOIN
  w3schools.orders AS O ON O.EmployeeID = E.EmployeeID
GROUP BY `Nome completo`
ORDER BY `Total de pedidos`;
