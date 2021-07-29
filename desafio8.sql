SELECT customers.ContactName AS 'Nome de contato' ,
shippers.ShipperName AS 'Empresa que fez o envio',
orders.OrderDate AS 'Data do pedido'
FROM customers AS customers
INNER JOIN shippers AS shippers
INNER JOIN orders AS orders
ON customers.CustomerID = orders.CustomerID AND
shippers.ShipperID = orders.ShipperID AND
orders.CustomerID = customers.CustomerID
WHERE orders.ShipperID IN (1 , 2)
ORDER BY `Nome de contato`, `Empresa que fez o envio`, `Data do pedido`;
