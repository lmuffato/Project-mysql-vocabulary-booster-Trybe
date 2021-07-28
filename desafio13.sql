SELECT p.ProductName AS Produto, p.Price AS Preço
FROM w3schools.products AS p
WHERE EXISTS ( 
  SELECT * FROM w3schools.order_details AS o
  WHERE o.ProductID = p.ProductID AND o.Quantity > 80
)
ORDER BY Produto;