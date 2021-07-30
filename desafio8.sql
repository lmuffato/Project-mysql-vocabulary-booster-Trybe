SELECT cus.CONTACTNAME AS 'Nome de contato', sh.ShipperName AS 'Empresa que fez o envio',od.OrderDate AS 'Data do pedido' FROM w3schools.customers AS cus
INNER JOIN w3schools.orders AS od
INNER JOIN w3schools.shippers AS sh
ON cus.CustomerID = od.CustomerID AND od.ShipperID = sh.ShipperID
WHERE sh.ShipperName IN ('Speedy Express', 'United Package')
ORDER BY `Nome de contato`, `Empresa que fez o envio`, `Data do pedido`;
