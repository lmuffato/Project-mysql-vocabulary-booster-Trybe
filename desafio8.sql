SELECT t1.ContactName AS `Nome de contato`,
(SELECT t2.ShipperName FROM w3schools.shippers AS t2
WHERE t2.ShipperID = t3.ShipperID) AS `Empresa que fez o envio`,
t3.OrderDate AS `Data do pedido` FROM w3schools.customers AS t1
INNER JOIN w3schools.orders AS t3
ON t1.CustomerID = t3.CustomerID
HAVING `Empresa que fez o envio` IN ('Speedy Express', 'United Package')
ORDER BY `Nome de contato` ASC, `Data do pedido` ASC;
