SELECT
    c.ContactName AS `Nome de contato`,
    s.ShipperName AS `Empresa que fez o envio`,
    o.OrderDate AS `Data do pedido`
FROM
    customers AS c
JOIN
    orders AS o
ON
    c.CustomerID = o.CustomerID
JOIN
    shippers AS s
ON
    o.ShipperID = s.ShipperID
WHERE
    s.ShipperName LIKE 'Speedy Express' 
    OR s.ShipperName LIKE 'United Package'
ORDER BY
    c.ContactName ASC,
    s.ShipperName ASC,
    o.OrderDate ASC;
