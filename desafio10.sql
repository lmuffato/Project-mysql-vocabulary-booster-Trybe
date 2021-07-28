
SELECT products.ProductName AS Produto,
MIN(details.Quantity) AS Mínima,
MAX(details.Quantity) AS Máxima,
ROUND(AVG(details.Quantity), 2) AS Média
FROM w3schools.order_details AS details
INNER JOIN w3schools.products AS products ON details.ProductID = products.ProductID
GROUP BY details.ProductID HAVING ROUND(AVG(details.Quantity), 2) > 20.00
ORDER BY ROUND(AVG(details.Quantity), 2), Produto;