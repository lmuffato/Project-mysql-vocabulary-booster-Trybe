SELECT 
p.productName AS `Produto`,
p.price AS `Preço`
FROM w3schools.order_details AS od
INNER JOIN w3schools.products AS p
ON p.productID = od.productID
AND od.quantity > 80
ORDER BY `Produto`;
