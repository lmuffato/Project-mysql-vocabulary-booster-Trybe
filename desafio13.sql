SELECT 
    prod.ProductName AS 'Produto',
    prod.Price AS 'Preço'
FROM
    w3schools.order_details AS ord_d
        INNER JOIN
    w3schools.products AS prod ON ord_d.ProductID = prod.ProductID
WHERE
    ord_d.Quantity > 80
ORDER BY Produto ASC;
