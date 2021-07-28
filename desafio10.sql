SELECT pn.ProductName AS 'Produto',
  MIN(o.Quantity) AS 'Mínima',
  MAX(o.Quantity) AS 'Máxima',
  ROUND(AVG(o.Quantity), 2) AS 'Média'
FROM w3schools.products AS pn
  INNER JOIN w3schools.order_details AS o
    ON pn.ProductID = o.ProductID
GROUP BY `Produto`
  HAVING AVG(o.Quantity) > 20.00
ORDER BY `Média` ASC, `Produto` ASC;
