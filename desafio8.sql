SELECT 
    c.ContactName AS 'Nome de contato',
    s.ShipperName AS 'Empresa que fez o envio',
    o.OrderDate AS 'Data do pedido'
FROM
    customers AS c
        INNER JOIN
    orders AS o ON c.CustomerID = o.CustomerID
        INNER JOIN
    shippers AS s ON o.ShipperID = s.ShipperID
WHERE
    s.ShipperName IN ('Speedy Express' , 'United Package')
ORDER BY `Nome de contato`, `Empresa que fez o envio`, `Data do pedido`;
