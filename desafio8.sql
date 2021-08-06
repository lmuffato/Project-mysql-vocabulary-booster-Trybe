SELECT cust.ContactName AS `Nome de contato`,
sh.ShipperName AS `Empresa que fez o envio`,
ord.OrderDate AS `Data do pedido`
FROM w3schools.customers AS cust
INNER JOIN w3schools.orders AS ord
ON cust.CustomerID = ord.CustomerID
INNER JOIN w3schools.shippers AS sh
ON ord.ShipperID = sh.ShipperID
WHERE sh.ShipperName
IN('Speedy Express','United Package')
ORDER BY `Nome de contato`, `Empresa que fez o envio`, `Data do pedido`;
