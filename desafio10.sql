SELECT * FROM (
SELECT ProductName AS 'Produto', MIN(od.Quantity) AS 'Mínima', MAX(od.Quantity) AS 'Máxima', CONVERT(AVG(od.Quantity), DECIMAL(10,2)) AS 'Média' FROM products
INNER JOIN order_details as od
ON products.ProductID = od.ProductID
GROUP BY ProductName
ORDER BY CONVERT(AVG(od.Quantity), DECIMAL(10,2)) ASC, ProductName) AS final
WHERE final.Média > 20;
