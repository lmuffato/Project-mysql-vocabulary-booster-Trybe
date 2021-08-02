SELECT
  CONCAT(e.FirstName, ' ', e.LastName) AS 'Nome completo',
  (
    SELECT
      COUNT(*)
    FROM
      w3schools.orders
    WHERE
      EmployeeID = o.EmployeeID
  ) AS 'Total de pedidos'
FROM
  w3schools.order_details AS od
  INNER JOIN w3schools.orders AS o ON od.OrderID = o.OrderID
  INNER JOIN w3schools.employees AS e ON o.EmployeeID = e.EmployeeID
GROUP BY
  `Nome completo`,
  `Total de pedidos`
ORDER BY
  `Total de pedidos`;
