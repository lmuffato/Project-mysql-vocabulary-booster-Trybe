-- SELECT * FROM w3schools.products;
-- SELECT * FROM w3schools.order_details;

SELECT t1.ProductName AS `Produto`,
t1.Price AS `Preço`
FROM w3schools.products AS t1
INNER JOIN w3schools.order_details AS t2 ON t1.ProductID = t2.ProductID
WHERE t2.Quantity > 80
ORDER BY `Produto`;
