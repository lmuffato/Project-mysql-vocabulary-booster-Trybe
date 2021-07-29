SELECT 
    prd.ProductName AS 'Produto', prd.Price AS 'Preço'
FROM
    w3schools.order_details AS odt
        INNER JOIN
    w3schools.products AS prd ON odt.ProductID = prd.ProductID
WHERE
    odt.Quantity > 80
ORDER BY prd.ProductName ASC;
