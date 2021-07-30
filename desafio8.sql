SELECT c.ContactName AS `Nome de contato`,
s.ShipperName AS `Empresa que fez o envio`, 
d.OrderDate AS `Data do pedido`
FROM w3schools.orders AS d
INNER JOIN w3schools.customers AS c ON d.CustomerID = c.CustomerID
INNER JOIN w3schools.shippers AS s ON d.ShipperID = s.ShipperID
WHERE d.ShipperID = 1 OR d.ShipperID = 2
ORDER BY `Nome de Contato`, `Empresa que fez o envio`, `Data do pedido` ASC;
