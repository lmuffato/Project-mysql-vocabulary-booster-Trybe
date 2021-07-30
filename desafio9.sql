SELECT concat(em.FirstName, ' ', em.LastName) AS 'Nome Completo', count(o.OrderID) AS 'Total de Pedidos' FROM orders o
INNER JOIN employees em
ON o.EmployeeID = em.EmployeeID
GROUP BY 1
ORDER BY 2 ASC;
