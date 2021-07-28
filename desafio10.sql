SELECT p.ProductName AS Produto,
MIN(od.Quantity) AS Mínima,
MAX(od.Quantity) AS Máxima,
ROUND(AVG(od.Quantity), 2) AS Média
FROM order_details AS od
INNER JOIN products AS p
ON od.ProductID = p.ProductID
GROUP BY Produto
HAVING Média > 20
ORDER BY Média, Produto;
