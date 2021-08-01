SELECT
t1.ContactName AS `Nome de contato`,
t3.ShipperName AS `Empresa que fez o envio`,
t2.OrderDate AS `Data do pedido`
FROM w3schools.customers AS t1 
INNER JOIN w3schools.orders AS t2 ON t1.CustomerID = t2.CustomerID
INNER JOIN w3schools.shippers AS t3 ON t2.ShipperID = t3.ShipperID
WHERE t3.ShipperID IN (1, 2)
ORDER BY `Nome de contato` ASC, `Empresa que fez o envio` ASC, `Data do pedido` ASC;
