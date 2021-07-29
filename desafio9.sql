SELECT
  (SELECT CONCAT(FirstName, ' ', LastName) 
    FROM w3schools.employees AS E
    WHERE E.EmployeeID = O.EmployeeID) AS `Nome completo`,
  COUNT(EmployeeID) AS `Total de pedidos`
FROM w3schools.orders AS O
GROUP BY EmployeeID
ORDER BY `Total de pedidos` ASC;
