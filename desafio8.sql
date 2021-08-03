SELECT c.contactName AS 'Nome de contato', s.ShipperName AS 'Empresa que fez o envio', o.OrderDate AS 'Data do pedido' FROM w3schools.customers AS c
INNER JOIN w3schools.orders AS o
ON o.CustomerID = c.CustomerID
INNER JOIN w3schools.shippers AS s
ON s.shipperID = o.shipperID
WHERE s.ShipperName <> 'Federal Shipping'
ORDER BY `Nome de contato`, `Empresa que fez o envio`, `Data do pedido`;
