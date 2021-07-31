SELECT cust.ContactName AS 'Nome de contato',
ship.ShipperName AS 'Empresa que fez o envio',
ord.OrderDate AS 'Data do pedido'
FROM w3schools.customers AS cust
INNER JOIN 
w3schools.orders AS ord
INNER JOIN
w3schools.shippers AS ship
ON
ord.ShipperID = ship.ShipperID
AND
cust.CustomerID = ord.CustomerID
WHERE ship.ShipperName = 'Speedy Express' OR ship.ShipperName = 'United Package'
ORDER BY `Nome de contato`, `Empresa que fez o envio`, `Data do pedido`;
