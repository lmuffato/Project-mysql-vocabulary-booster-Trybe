SELECT
  p.ProductName AS 'Produto',
  p.Price AS 'Preço'
FROM
  w3schools.orders AS o
  INNER JOIN w3schools.order_details AS od ON o.OrderID = od.OrderID
  INNER JOIN w3schools.products AS p ON od.ProductID = p.ProductID
  AND od.Quantity > 80
ORDER BY
  `Produto`;
