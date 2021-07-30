SELECT
  p.ProductName AS Produto,
  p.Price AS Preço
FROM
  products AS p
INNER JOIN
  order_details AS od ON p.ProductID = od.ProductID
WHERE
  od.Quantity > 80
ORDER BY 
  Produto;
