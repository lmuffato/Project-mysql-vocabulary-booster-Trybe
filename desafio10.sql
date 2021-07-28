SELECT p.ProductName AS 'Produto',
  MIN(o_d.Quantity) AS 'Mínima',
  MAX(o_d.Quantity) AS 'Máxima',
  ROUND(AVG(o_d.Quantity), 2) AS 'Média'
FROM products AS p
INNER JOIN order_details AS o_d
ON p.ProductID = o_d.ProductID
GROUP BY `Produto`
HAVING `Média` > 20
ORDER BY `Média`, `Produto`;
