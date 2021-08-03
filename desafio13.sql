SELECT t1.ProductName AS 'Produto',
t1.Price AS 'Preço'
FROM w3schools.products AS t1
WHERE EXISTS (
  SELECT * FROM order_details AS t2
  WHERE t2.productId = t1.productId
  AND t2.quantity > 80
)
ORDER BY ProductName;
