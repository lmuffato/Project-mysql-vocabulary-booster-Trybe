SELECT 
    cst.ContactName AS 'Nome de contato',
    shp.ShipperName AS 'Empresa que fez o envio',
    ods.OrderDate AS 'Data do pedido'
FROM
    w3schools.orders AS ods
        LEFT JOIN
    w3schools.customers cst ON ods.CustomerID = cst.CustomerID
        INNER JOIN
    w3schools.shippers AS shp ON ods.ShipperID = shp.ShipperID
HAVING shp.ShipperName IN ('Speedy Express' , 'United Package')
ORDER BY cst.ContactName ASC, shp.ShipperName ASC, ods.OrderDate ASC;
