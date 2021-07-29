SELECT
  (SELECT ProductName FROM w3schools.products AS P WHERE P.ProductID = O.ProductID ) AS 'Produto',
  MIN(Quantity) AS 'Mínima',
  MAX(Quantity) AS 'Máxima',
  ROUND(AVG(Quantity), 2) AS 'Média'
FROM w3schools.order_details AS O
GROUP BY ProductID HAVING Média > 20.00
ORDER BY Média, Produto;
