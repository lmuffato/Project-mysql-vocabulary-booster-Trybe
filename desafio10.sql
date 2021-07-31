SELECT `Produto`, `Mínima`, `Máxima`, `Média`
FROM (
  SELECT P.ProductName AS `Produto`,
  MIN(OD.Quantity) `Mínima`,
  MAX(OD.Quantity) `Máxima`,
  ROUND(AVG(OD.Quantity), 2) AS `Média`
  FROM w3schools.products AS P
  INNER JOIN w3schools.order_details AS OD
  ON P.ProductID = OD.ProductID
  GROUP BY OD.ProductID
) AS `tabela_calculos`
WHERE `Média` > 20
ORDER BY `Média` ASC, `Produto` ASC;
