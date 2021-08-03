SELECT products.ProductName AS Produto,
MIN(order_details.ProductID * order_details.Quantity) AS Mínima,
MAX(order_details.ProductID * order_details.Quantity) AS Máxima,
ROUND(AVG(order_details.ProductID * order_details.Quantity), 2) AS Média
FROM w3schools.products AS products
INNER JOIN order_details AS order_details
ON order_details.ProductID = products.ProductID
GROUP BY Produto
ORDER BY Média, Produto;
