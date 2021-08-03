USE w3schools;
SELECT
  products.ProductName AS Produto,
  MIN(order_details.Quantity) 'Mínima',
  MAX(order_details.Quantity) AS 'Máxima',
  ROUND(AVG(order_details.Quantity), 2) AS 'Média'
FROM
  order_details AS order_details
  INNER JOIN products AS products ON order_details.ProductID = products.ProductID
GROUP BY
  order_details.ProductID
HAVING
  `Média` > 20.00
ORDER BY `Média` ASC, Produto;
