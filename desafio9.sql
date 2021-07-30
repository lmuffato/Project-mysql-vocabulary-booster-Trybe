SELECT CONCAT(E.FirstName, ' ', E.LastName) AS `Nome completo`,
COUNT(E.EmployeeID = O.EmployeeID) AS `Total de pedidos`
FROM
w3schools.employees AS E
    INNER JOIN
w3schools.orders AS O ON E.EmployeeID = O.EmployeeID
GROUP BY `Nome completo`
ORDER BY `Total de pedidos` ASC;
