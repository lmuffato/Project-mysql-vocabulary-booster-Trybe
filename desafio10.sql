-- challenge 10;

SELECT ProductName AS Produto,
MIN(Quantity) AS Mínima,
MAX(Quantity) AS Máxima,
ROUND(AVG(Quantity), 2) AS Média
FROM w3schools.products AS products
INNER JOIN w3schools.order_details AS details_order
ON products.productID=details_order.productID
GROUP BY Produto
HAVING Média > 20
ORDER BY Média, Produto;
