-- 8. Exibe todas as pessoas consumidoras cujos pedidos já foram enviados pelas empresas "Speedy Express" ou "United Package"
SELECT c.contactName
AS 'Nome de contato',
s.shipperName
AS 'Empresa que fez o envio',
  o.orderDate
AS 'Data do pedido'
FROM w3schools.customers AS c
INNER JOIN w3schools.orders AS o
INNER JOIN w3schools.shippers AS s
ON (c.customerID = o.customerID)
AND
  ((o.shipperID=1 AND s.shipperID = o.shipperID) OR (o.shipperID=2 AND s.shipperID = o.shipperID))
ORDER BY c.contactName ASC, s.shipperName ASC, o.orderDate;
