SELECT 
t1.contactName AS `Nome de contato`,
t3.shipperName AS `Empresa que fez o envio`,
t2.orderDate AS `Data do pedido`
FROM w3schools.customers AS t1
INNER JOIN w3schools.orders AS t2
INNER JOIN w3schools.shippers AS t3
ON t1.customerID = t2.customerId 
AND ((t2.shipperId = 1 AND t3.shipperId = t3.shipperId) OR (t3.shipperId = 2 AND t3.shipperId = t2.shipperId))
ORDER BY `Nome de contato` ASC, `Empresa que fez o envio` ASC, `Data do pedido` ASC;
