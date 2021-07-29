SELECT products.ProductName AS 'Produto', MIN(order_details.Quantity) AS 'Mínima', MAX(order_details.Quantity) AS 'Máxima', ROUND(AVG(order_details.Quantity), 2) AS 'Média'
FROM w3schools.products AS products
INNER JOIN w3schools.order_details AS order_details ON order_details.ProductID = products.ProductID
GROUP BY `Produto`
HAVING `Média` > 20
ORDER BY `Média` ASC, `Produto` ASC;
