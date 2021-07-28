SELECT
  p.ProductName AS 'Produto',
  MIN(d.Quantity) AS 'Mínima',
  MAX(d.Quantity) AS 'Máxima',
  ROUND(AVG(d.Quantity), 2) AS 'Média'
FROM
  w3schools.products p
  INNER JOIN w3schools.order_details d ON p.ProductId = d.ProductId
GROUP BY
  1
HAVING
  ROUND(AVG(d.Quantity), 2) > 20
ORDER BY
  4,
  1;
