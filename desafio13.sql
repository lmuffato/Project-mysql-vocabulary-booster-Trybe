SELECT productName AS `Produto`, price `Preço`
FROM w3schools.products AS p
WHERE EXISTS (
SELECT * FROM order_details AS od
  WHERE od.productId = p.productId 
  AND od.quantity > 80
)
ORDER BY `Produto`;
