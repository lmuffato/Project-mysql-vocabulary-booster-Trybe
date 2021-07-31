SELECT
  t1.ProductName AS 'Produto',
  MIN(t2.Quantity) AS 'Mínima',
  MAX(t2.Quantity) AS 'Máxima',
  ROUND(AVG(t2.Quantity), 2) AS 'Média'
  FROM w3schools.products AS t1
  INNER JOIN w3schools.order_details AS t2
    ON t1.ProductID = t2.ProductID
GROUP BY t1.ProductID
HAVING ROUND(AVG(t2.Quantity), 2) > 20
ORDER BY ROUND(AVG(t2.Quantity), 2), t1.ProductName;
