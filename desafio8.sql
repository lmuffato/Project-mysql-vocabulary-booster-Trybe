USE w3schools;
SELECT
customers.ContactName AS 'Nome de contato',
shippers.ShipperName AS 'Empresa que fez o envio',
DATE(orders.OrderDate) AS 'Data do pedido'
FROM customers AS customers
INNER JOIN orders AS orders ON customers.CustomerID = orders.CustomerID
INNER JOIN shippers AS shippers ON orders.ShipperID = shippers.ShipperID
WHERE shippers.ShipperID != 3
ORDER BY customers.ContactName, shippers.ShipperName, DATE(orders.OrderDate) ASC;
