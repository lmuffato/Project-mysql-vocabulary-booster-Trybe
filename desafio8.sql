SELECT c.contactName AS 'Nome de contato',o.OrderDate AS 'Empresa que fez o envio',s.shipperName AS 'Data do pedido'
FROM w3schools.customers AS c
INNER JOIN w3schools.orders AS o
ON c.CustomerID=o.CustomerID
INNER JOIN w3schools.shippers AS s
ON s.ShipperID=o.ShipperID
WHERE o.ShipperID=1 OR o.ShipperID=2
ORDER BY c.ContactName,s.ShipperName,o.OrderDate
