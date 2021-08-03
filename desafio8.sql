-- challenge 8;

SELECT ContactName AS `Nome de contato`,
ShipperName AS `Empresa que fez o envio`,
OrderDate AS `Data do pedido` FROM w3schools.orders AS orders
INNER JOIN w3schools.shippers AS shippers
ON orders.ShipperID=shippers.ShipperID
INNER JOIN w3schools.customers AS customers
ON orders.CustomerID=customers.CustomerID
WHERE ShipperName='Speedy Express' OR ShipperName='United Package'
ORDER BY ContactName ASC, ShipperName ASC, OrderDate ASC;
