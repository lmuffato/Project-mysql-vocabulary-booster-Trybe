SELECT
  t2.ProductName AS `Produto`,
  MIN(t1.Quantity) AS `Mínima`,
  MAX(t1.Quantity) AS `Máxima`,
  ROUND(AVG(t1.Quantity),2) AS `Média`
FROM w3schools.order_details AS t1
INNER JOIN w3schools.products AS t2
ON t1.ProductID = t2.ProductID
GROUP BY t2.ProductID
HAVING AVG(t1.Quantity) > 20
ORDER BY ROUND(AVG(t1.Quantity),2), t2.ProductName;
