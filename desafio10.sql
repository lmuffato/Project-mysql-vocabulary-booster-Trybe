/* 10. Exibe todos os produtos que já foram pedidos, que possuem uma média
de quantidade nos pedidos registrados acima de 20.00 */
SELECT
  pro.ProductName AS `Produto`,
  MIN(det.Quantity) AS `Mínima`,
  MAX(det.Quantity) AS `Máxima`,
  ROUND(AVG(det.Quantity),2) AS `Média`
FROM w3schools.order_details AS det
INNER JOIN w3schools.products AS pro
  ON pro.ProductID = det.ProductID
GROUP BY pro.ProductName
HAVING `Média` > 20
ORDER BY
  `Média` ASC,
  `Produto` ASC;
