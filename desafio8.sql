SELECT 
    ctms.ContactName AS "Nome de contato",
    ship.ShipperName AS "Empresa que fez o envio",
    orde.OrderDate AS "Data do pedido"
FROM
    w3schools.orders AS orde
        INNER JOIN
    w3schools.customers AS ctms ON orde.CustomerID = ctms.CustomerID
        INNER JOIN
    w3schools.shippers AS ship ON ship.ShipperID = orde.ShipperID
WHERE
    ship.ShipperName IN ('Speedy Express' , 'United Package')
ORDER BY `Nome de contato` , `Empresa que fez o envio` , `Data do pedido`;
