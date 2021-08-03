SELECT products.ProductName as 'Produto',
  MIN(order_details.Quantity) AS 'Mínima',
  MAX(order_details.Quantity) AS 'Máxima',
  ROUND(AVG(order_details.Quantity), 2) AS 'Média'
FROM w3schools.order_details AS order_details
INNER JOIN w3schools.products AS products ON order_details.ProductID = products.ProductID
GROUP BY order_details.ProductID
HAVING `Média` > 20.00
ORDER BY `Média`, `Produto`;
