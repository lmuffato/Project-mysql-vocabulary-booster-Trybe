SELECT
  t1.ProductName AS 'Produto',
  t1.Price AS 'Preço'
FROM w3schools.products AS t1
  INNER JOIN w3schools.order_details AS t2
    ON t1.ProductID = t2.ProductID
WHERE Quantity > 80
ORDER BY t1.ProductName;
