  SELECT
    (SELECT CONCAT(E.FirstName, ' ', E.LastName) FROM w3schools.employees AS E WHERE E.EmployeeID = O.EmployeeID) AS 'Nome completo',
    COUNT(*) AS 'Total de pedidos' 
  FROM w3schools.orders AS O
  GROUP BY O.EmployeeID
  ORDER BY `Total de pedidos`;
