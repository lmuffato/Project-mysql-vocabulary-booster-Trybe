SELECT pt.ProductName, pt.Price FROM products pt
INNER JOIN order_details od
ON pt.ProductID = od.ProductID AND od.Quantity > 80
ORDER BY 1 ASC;
