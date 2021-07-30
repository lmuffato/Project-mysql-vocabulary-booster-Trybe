SELECT p.ProductName AS Produto,
MIN(q.quantity) AS Mínima,
MAX(q.quantity) AS Máxima,
ROUND(AVG(q.quantity), 2) AS Média
FROM w3schools.products as p
INNER JOIN w3schools.order_details as q ON p.ProductID = q.ProductID
GROUP BY p.ProductName
HAVING Média > 20.00
ORDER BY Média ASC, Produto;
