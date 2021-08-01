SELECT CONCAT(E.FirstName,' ',E.LastName) AS 'Nome completo',
COUNT(O.EmployeeID) AS 'Total de pedidos'
FROM w3schools.orders O
INNER JOIN w3schools.employees E
ON E.EmployeeID = O.EmployeeID
GROUP BY `Nome completo`
ORDER BY `Total de pedidos`;
