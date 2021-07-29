-- Exibe todas as pessoas consumidoras cujos pedidos já foram enviados pelas empresas "Speedy Express" ou "United Package"

SELECT c.ContactName `Nome de contato`,
s.ShipperName `Empresa que fez o envio`,
o.OrderDate `Data do pedido`
FROM w3schools.orders AS o
INNER JOIN w3schools.customers AS c
ON o.CustomerID = c.CustomerID
INNER JOIN w3schools.shippers AS s
ON o.ShipperID = s.ShipperID
WHERE o.ShipperID IN(1, 2)
ORDER BY `Nome de contato`, `Empresa que fez o envio`, `Data do pedido`;
