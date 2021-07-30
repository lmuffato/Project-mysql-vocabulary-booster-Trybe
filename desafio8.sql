SELECT c.CustomerName AS 'Nome de contato',
s.ShipperName AS 'Empresa que fez o envio',
d.OrderDate AS 'Data do pedido'
FROM w3schools.orders AS d
INNER JOIN w3schools.customers AS c ON d.CustomerID = c.CustomerID
INNER JOIN w3schools.shippers AS s 
ON s.ShipperID = d.ShipperID AND ShipperName in ("Speedy Express", "United Package" )
ORDER BY `Nome de contato`, `Empresa que fez o envio`, `Data do pedido`;
