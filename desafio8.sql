SELECT cust.ContactName AS `Nome de contato`,
ship.ShipperName AS `Empresa que fez o envio`,
orde.OrderDate AS `Data do pedido`
FROM w3schools.customers AS cust
INNER JOIN w3schools.orders AS orde
INNER JOIN w3schools.shippers AS ship
ON orde.CustomerID = cust.CustomerID AND ship.ShipperID = orde.ShipperID
WHERE ship.ShipperName = 'Speedy Express' OR ship.ShipperName = 'United Package'
ORDER BY `Nome de contato`, `Empresa que fez o envio`, `Data do pedido`;