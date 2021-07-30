SELECT
  ProductName AS `Produto`,
  Price AS `Preço`
FROM w3schools.products AS P
WHERE EXISTS (
  SELECT * FROM w3schools.order_details AS OD
  WHERE OD.ProductID = P.ProductID AND OD.Quantity > 80
)
ORDER BY Produto;
