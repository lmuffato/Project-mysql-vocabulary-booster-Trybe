SELECT pr.ProductName as 'Produto',
pr.Price as 'Preço'
FROM w3schools.products as pr
INNER JOIN
w3schools.order_details as od ON pr.ProductID = od.ProductID
WHERE od.Quantity > 80
ORDER BY `Produto`;
