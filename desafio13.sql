SELECT p.productName AS 'Produto',
p.price AS 'Preço'
FROM w3schools.order_details AS o
INNER JOIN w3schools.products AS p
ON p.productID = o.productID
WHERE o.quantity > 80
ORDER BY `Produto`;
