SELECT p.ProductName AS `Produto`, p.Price as `Preço`
FROM w3schools.products as p
INNER JOIN order_details as o
ON p.ProductID = o.ProductID
WHERE o.Quantity > 80
ORDER BY `Produto`;
