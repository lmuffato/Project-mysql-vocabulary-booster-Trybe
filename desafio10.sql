SELECT
  prod.ProductName AS Produto,
  MIN(od.Quantity) 'Mínima',
  MAX(od.Quantity) AS 'Máxima',
  ROUND(AVG(od.Quantity), 2) AS 'Média'
FROM
  w3schools.order_details AS od
  INNER JOIN w3schools.products AS prod 
  ON od.ProductID = prod.ProductID
GROUP BY od.ProductID
HAVING `Média` > 20.00 
ORDER BY `Média`, Produto;
