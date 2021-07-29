-- 10 - Exibe todos os produtos que já foram pedidos, que possuem uma média de quantidade nos pedidos registrados acima de 20.00
SELECT 
  (
  SELECT
    ProductName
  FROM w3schools.products
  WHERE o.ProductID = ProductID
  ) AS `Produto`,
  MIN(Quantity) AS `Mínima`,
  MAX(Quantity) AS `Máxima`,
  ROUND(AVG(Quantity), 2) AS `Média`
FROM w3schools.order_details as o
GROUP BY o.ProductID
HAVING `Média` > 20.00
ORDER BY `Média` ASC, `Produto` ASC;
