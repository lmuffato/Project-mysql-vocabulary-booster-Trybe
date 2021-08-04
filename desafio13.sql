SELECT
  p.ProductName AS `Produto`,
  p.Price AS `Preço`
FROM w3schools.products p
WHERE p.ProductID IN (
  SELECT ProductID
  FROM w3schools.order_details
  WHERE Quantity > 80
)
ORDER BY `Produto` ASC;
