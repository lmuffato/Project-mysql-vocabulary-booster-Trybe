SELECT c.ContactName AS 'Nome de contato', s.ShipperName AS 'Empresa que fez o envio', OrderDate AS 'Data do pedido' FROM orders
INNER JOIN customers AS c
ON orders.CustomerID = c.CustomerID
INNER JOIN shippers AS s
ON orders.ShipperID = s.ShipperID
WHERE s.ShipperName = 'Speedy Express' OR s.ShipperName = 'United Package'
ORDER BY c.ContactName, s.ShipperName, OrderDate ASC;
