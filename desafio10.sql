SELECT products.ProductName AS 'Produto',
MIN(order_details.Quantity) AS 'Mínima',
MAX(order_details.Quantity) AS 'Máxima',
ROUND(AVG(order_details.Quantity), 2) AS 'Média'
FROM products AS products
INNER JOIN order_details AS order_details
ON products.ProductID = order_details.ProductID
GROUP BY `Produto`
HAVING `Média` > 20.00
ORDER BY `Média`, `Produto`;
