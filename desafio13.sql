SELECT 
    pdct.ProductName AS 'Produto', pdct.Price AS 'Preço'
FROM
    w3schools.products AS pdct
        INNER JOIN
    w3schools.order_details AS ordr ON pdct.ProductID = ordr.ProductID
WHERE
    ordr.Quantity > 80
ORDER BY `Produto`;
