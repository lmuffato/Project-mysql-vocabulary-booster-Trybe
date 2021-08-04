SELECT
  CONCAT(e.FirstName, ' ', e.LastName) "Nome completo",
  ed.qty "Total de pedidos"
FROM (
  SELECT EmployeeID, count(EmployeeID) as qty
  FROM w3schools.orders
  GROUP BY EmployeeID
) ed
INNER JOIN w3schools.employees as e
  ON e.EmployeeID = ed.EmployeeID
ORDER BY 2 ASC;
-- SELECT
--   CONCAT(e.FirstName, ' ', e.LastName) AS `Nome completo`,
--   COUNT(o.EmployeeID) AS `Total de pedidos`
-- FROM
--   w3schools.employees e
--     INNER JOIN w3schools.orders o ON o.EmployeeID = e.EmployeeIDs
-- GROUP BY o.EmployeeID 
-- ORDER BY `Total de pedidos` ASC;
