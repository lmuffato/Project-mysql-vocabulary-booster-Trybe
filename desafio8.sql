SELECT
cc.ContactName AS `Nome de contato`,
cs.ShipperName AS `Empresa que fez o envio`,
co.OrderDate AS `Data do pedido`
FROM w3schools.customers AS cc
INNER JOIN w3schools.shippers AS cs
INNER JOIN w3schools.orders AS co
ON ((cc.CustomerID = co.CustomerID)
AND (co.ShipperID = cs.ShipperID))
WHERE co.shipperID IN (1, 2)
ORDER BY 1, 2, 3;
