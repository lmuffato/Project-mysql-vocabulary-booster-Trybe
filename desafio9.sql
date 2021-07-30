SELECT
  CONCAT(e.FirstName, ' ', e.LastName) AS 'Nome completo',
  (
    SELECT COUNT(*)
    FROM w3schools.orders AS o
    WHERE o.EmployeeID = e.EmployeeID
  ) AS 'Total de pedidos'
FROM w3schools.employees AS e
WHERE EXISTS (
      SELECT o.EmployeeID
      FROM w3schools.orders AS o
      WHERE o.EmployeeID = e.EmployeeID
    )
ORDER BY `Total de pedidos`;
