SELECT
  prod.ProductName AS "Produto",
  MIN(odd.Quantity) AS "Mínima",
  MAX(odd.Quantity) AS "Máxima",
  ROUND(AVG(odd.Quantity), 2) AS "Média"
FROM w3schools.products AS prod
INNER JOIN w3schools.order_details AS odd
WHERE prod.ProductID = odd.ProductID
GROUP BY `Produto`
HAVING `Média` > 20
ORDER BY `Média`, `Produto`;
