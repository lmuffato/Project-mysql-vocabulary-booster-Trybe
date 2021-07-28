SELECT C.ContactName AS `Nome de contato`,
S.ShipperName AS `Empresa que fez o envio`,
O.OrderDate AS `Data do pedido`
FROM w3schools.orders AS O
INNER JOIN w3schools.customers AS C
ON O.CustomerID=C.CustomerID
INNER JOIN w3schools.shippers AS S
ON O.ShipperID=S.ShipperID
WHERE O.ShipperID IN (
SELECT ShipperID FROM w3schools.shippers
    WHERE ShipperName IN ('Speedy Express', 'United Package')
)
ORDER BY `Nome de contato`, `Empresa que fez o envio`, `Data do pedido`;
