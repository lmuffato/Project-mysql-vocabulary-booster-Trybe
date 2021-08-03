SELECT
    CONCAT(e.FirstName, ' ', e.LastName) AS 'Nome completo',
    COUNT(*) AS 'Total de pedidos'
  FROM w3schools.orders AS o
  INNER JOIN
    w3schools.employees AS e ON e.EmployeeID = o.EmployeeID
GROUP BY 1
ORDER BY 2; 
