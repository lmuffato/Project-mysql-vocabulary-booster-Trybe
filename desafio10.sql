SELECT
  p.ProductName AS `Produto`,
  ROUND(MIN(o.Quantity), 2) AS `Mínima`, 
  ROUND(MAX(o.Quantity), 2) AS `Máxima`,
  ROUND(AVG(o.Quantity), 2) AS `Média`
FROM
  w3schools.order_details o
    INNER JOIN w3schools.products p ON p.ProductID = o.ProductID
GROUP BY o.ProductID
HAVING AVG(o.Quantity) > 20
ORDER BY `Média` ASC, `Produto` ASC;
