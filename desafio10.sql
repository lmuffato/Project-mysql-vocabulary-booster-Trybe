SELECT prod.ProductName AS 'Produto',
  MIN(ord.Quantity) AS 'Mínima',
  MAX(ord.Quantity) AS 'Máxima',
  ROUND(AVG(ord.Quantity), 2) AS 'Média'
FROM w3schools.products AS prod
INNER JOIN w3schools.order_details AS ord
ON prod.ProductID = ord.ProductID
GROUP BY prod.ProductName
HAVING ROUND(AVG(ord.Quantity), 2) > 20.00
ORDER BY ROUND(AVG(ord.Quantity), 2), prod.ProductName;
