SELECT CONCAT(FirstName, ' ', LastName) AS 'Nome Completo',
-- https://www.alura.com.br/artigos/select-count-count1-e-countnome-a-batalha-dos-counts-de-sql
COUNT(1) AS 'Total de pedidos'
FROM w3schools.employees AS t1
INNER JOIN w3schools.orders AS t2
ON t1.EmployeeID = t2.EmployeeID
GROUP BY CONCAT(FirstName, ' ', LastName)
ORDER BY COUNT(*);
