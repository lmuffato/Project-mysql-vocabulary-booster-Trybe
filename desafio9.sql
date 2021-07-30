SELECT concat(em.FirstName, ' ', em.LastName) AS 'Nome completo', count(o.OrderID) AS 'Total de pedidos' FROM orders o
INNER JOIN employees em
ON o.EmployeeID = em.EmployeeID
GROUP BY 1
ORDER BY 2 ASC;
