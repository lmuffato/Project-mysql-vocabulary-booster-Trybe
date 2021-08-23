SELECT c.ContactName AS 'Nome de contato',
ship.ShipperName AS 'Empresa que fez o envio',
ord.OrderDate AS 'Data do pedido'
FROM w3schools.customers AS c
INNER JOIN w3schools.orders AS ord
ON c.CustomerID = ord.CustomerID
INNER JOIN w3schools.shippers AS ship
ON ord.ShipperID = ship.ShipperID
WHERE ship.ShipperName IN ('Speedy Express', 'United Package')
ORDER BY c.ContactName, ship.ShipperName, ord.OrderDate;
