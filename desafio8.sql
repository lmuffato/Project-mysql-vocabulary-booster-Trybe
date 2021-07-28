SELECT c.ContactName AS 'Nome de contato' ,
CASE 
	WHEN od.ShipperID = 1 THEN 'Speedy Express'
    WHEN od.ShipperID = 2 THEN 'United Package'
END AS 'Empresa que fez o envio',
od.OrderDate AS 'Data do pedido'
FROM w3schools.customers AS c
INNER JOIN w3schools.orders AS od
ON c.CustomerID = od.CustomerID
WHERE od.ShipperID = 1 OR od.ShipperID = 2
ORDER BY 1, 2, 3;
