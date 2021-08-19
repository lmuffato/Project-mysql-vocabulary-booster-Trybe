s.ShipperName AS 'Empresa que fez o envio',
o.OrderDate AS 'Data do pedido'
FROM w3schools.customers AS c
INNER JOIN w3schools.shippers AS s
INNER JOIN w3schools.orders AS o
ON o.CustomerID = c.CustomerID
AND o.ShipperID = s.ShipperID
WHERE s.ShipperID IN(1, 2)
ORDER BY `Nome de contato`, `Empresa que fez o envio`, `Data do pedido`;
