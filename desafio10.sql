SELECT * FROM products;

SELECT * FROM order_details;
SELECT products.ProductName
FROM w3schools.products products
INNER JOIN w3schools.order_details as order_details
    ON order_details.ProductID = products.ProductID;