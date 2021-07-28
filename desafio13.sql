SELECT 
  P.ProductName 'Produto',
  P.Price 'Preço'
FROM w3schools.products P
WHERE EXISTS(
  SELECT 
    * 
  FROM w3schools.order_details OD
    WHERE
      OD.ProductID = P.ProductID
    HAVING OD.Quantity > 80
)
ORDER BY `Produto`;
