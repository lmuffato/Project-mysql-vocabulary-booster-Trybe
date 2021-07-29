SELECT ProductName AS `Produto`, Price AS `Preço` FROM w3schools.products as products
WHERE EXISTS (
SELECT * FROM w3schools.order_details
  WHERE ProductID = products.ProductID AND Quantity > 80
)
ORDER BY `Produto`;
