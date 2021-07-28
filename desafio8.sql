SELECT 
COST.contactName AS 'Nome de contato',
SHIP.shipperName AS 'Empresa que fez o envio',
ORD.orderDate AS 'Data do pedido'
FROM w3schools.customers AS COST
INNER JOIN w3schools.orders AS ORD
INNER JOIN w3schools.shippers AS SHIP
ON (COST.customerID = ORD.customerId) 
AND ((ORD.shipperId = 1 AND SHIP.shipperId = ORD.shipperId) 
OR (ORD.shipperId = 2 AND SHIP.shipperId = ORD.shipperId))
ORDER BY COST.contactName ASC, SHIP.shipperName ASC, ORD.orderDate ASC;
