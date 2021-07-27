-- 13. Exibe todos produtos que já tiveram um pedido associado requerindo uma quantidade desse produto maior que 80
SELECT p.ProductName
AS "Produto",
p.Price
AS "Preço"
FROM w3schools.products
AS p
INNER JOIN w3schools.order_details
AS od
ON od.ProductID = p.ProductID AND od.Quantity>80
ORDER BY p.ProductName ASC;
