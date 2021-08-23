SELECT prod.ProductName as 'Produto',
prod.Price AS 'Preço'
FROM w3schools.products AS prod
WHERE EXISTS(
  SELECT * FROM w3schools.order_details AS ord
  WHERE ord.ProductID = prod.ProductID
  AND Quantity > 80
)
ORDER BY ProductName ASC;
