SELECT 
    pd.ProductName AS Produto, pd.Price AS Preço
FROM
    w3schools.products AS pd
        INNER JOIN
    w3schools.order_details AS od ON pd.ProductID = od.ProductID
WHERE
    od.Quantity > 80
ORDER BY 1;
