SELECT
  P.ProductName 'Produto',
  MIN(Quantity) 'Mínima',
  MAX(Quantity) 'Máxima',
  ROUND(AVG(Quantity), 2) 'Média'
FROM
  w3schools.products P
      INNER JOIN
  w3schools.order_details O ON P.ProductID = O.ProductID
GROUP BY `Produto`
HAVING `Média` > 20
ORDER BY `Média`, `Produto`;
