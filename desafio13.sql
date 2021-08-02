SELECT P.ProductName AS 'Produto', P.Price AS 'Preço'
FROM w3schools.products P
INNER JOIN w3schools.order_details OD
ON P.ProductID = OD.ProductID
WHERE OD.Quantity > 80
ORDER BY P.ProductName;
