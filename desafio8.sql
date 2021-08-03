Select customers.ContactName AS 'Nome de contato',
shippers.ShipperName AS 'Empresa que fez o envio',
orders.OrderDate AS 'Data do pedido'
FROM w3schools.customers AS customers
INNER JOIN orders AS orders
ON orders.CustomerID = customers.CustomerID
INNER JOIN shippers AS shippers
ON shippers.ShipperID = orders.ShipperID
WHERE shippers.ShipperName = 'Speedy Express' OR shippers.ShipperName = 'United Package'
ORDER BY `Nome de contato`, `Empresa que fez o envio` , `Data do Pedido`;

-- INNER JOIN com WHERE veio no final porque dava
-- erro se colocasse outro INNER JOIN depois do WHERE
