SELECT products.ProductName AS 'Produto',
  products.Price AS 'Preço'
FROM w3schools.products
WHERE EXISTS (
  SELECT * FROM w3schools.order_details
  WHERE order_details.productId = products.productId
  AND order_details.quantity > 80
)
ORDER BY 1;
