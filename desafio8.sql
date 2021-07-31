-- SELECT * FROM w3schools.shippers;
-- SELECT * FROM w3schools.orders;
-- SELECT * FROM w3schools.customers;

SELECT t1.ContactName AS `Nome de contato`,
t2.ShipperName AS `Empresa que fez o envio`,
t3.OrderDate AS `Data do pedido`
FROM w3schools.customers AS t1 
INNER JOIN w3schools.orders AS t3 ON t1.CustomerID = t3.CustomerID
INNER JOIN w3schools.shippers AS t2 ON t3.ShipperID = t2.ShipperID
WHERE t2.ShipperName IN('Speedy Express', 'United Package')
ORDER BY `Nome de contato`, `Empresa que fez o envio`, `Data do pedido`;
