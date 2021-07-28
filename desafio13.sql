SELECT
  P.ProductName AS 'Produto',
  ROUND(P.Price, 2) AS 'Preço'
FROM w3schools.products As P
    INNER JOIN
  w3schools.order_details AS O ON O.ProductID = P.ProductID
WHERE O.Quantity > 80
ORDER BY `Produto`;
