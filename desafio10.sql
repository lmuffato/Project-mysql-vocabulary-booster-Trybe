SELECT product.ProductName AS 'Produto',
MIN(product_order.Quantity) AS 'Mínima',
MAX(product_order.Quantity) AS 'Máxima',
ROUND(AVG(product_order.Quantity), 2) AS 'Média'
FROM w3schools.products AS product
INNER JOIN w3schools.order_details AS product_order
ON product.ProductID = product_order.ProductID
GROUP BY product.ProductName
HAVING ROUND(AVG(product_order.Quantity), 2) > 20.00
ORDER BY ROUND(AVG(product_order.Quantity), 2), product.ProductName;
