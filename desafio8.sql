SELECT c.contactName AS 'Nome de contato',
s.shipperName AS 'Empresa que fez o envio',
o.orderDate AS 'Data do pedido'
  FROM w3schools.orders AS o
    JOIN w3schools.customers AS c
      ON c.customerId = o.customerId
    JOIN w3schools.shippers AS s
      ON s.shipperId = o.shipperId 
      AND s.shipperName IN ('Speedy Express', 'United Package')
      ORDER BY c.contactName ASC, s.shipperName ASC, o.orderDate ASC;
