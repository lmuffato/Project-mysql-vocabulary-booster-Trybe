SELECT
  CONCAT(e.FirstName, ' ', e.LastName) AS 'Nome completo',
  COUNT(o.OrderID) AS 'Total de pedidos'

FROM
  w3schools.orders o
  INNER JOIN w3schools.employees e ON e.EmployeeID = o.EmployeeID
WHERE
  EXISTS (
    SELECT
      *
    FROM
      w3schools.employees e
    WHERE
      o.EmployeeID = e.EmployeeID
  )
GROUP BY
  o.EmployeeID
ORDER BY
  `Total de pedidos`;
