SELECT p.productName AS `Produto`,
p.price AS `Preço`
FROM w3schools.products AS p
INNER JOIN w3schools.order_details AS od
ON od.productID = p.productID AND od.quantity > 80
ORDER BY `Produto` ASC;
