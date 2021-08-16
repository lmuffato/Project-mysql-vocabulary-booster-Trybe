SELECT * FROM products;

SELECT * FROM order_details;
SELECT products.ProductName AS `Produto`,
MIN(order_details.Quantity) AS `Mínima`,
MAX(order_details.Quantity) AS `Máxima`,
ROUND(AVG(order_details.Quantity), 2) AS `Média`
FROM w3schools.products products
INNER JOIN w3schools.order_details as order_details
    ON order_details.ProductID = products.ProductID
GROUP BY products.ProductName
ORDER BY `Média`, `Produto`;