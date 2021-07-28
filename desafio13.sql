SELECT
  ProductName AS 'Produto',
  Price AS 'Preço'
FROM
  w3schools.products p
INNER JOIN
  w3schools.order_details d ON p.ProductID = d.ProductID
WHERE d.Quantity > 80
ORDER BY 1;
