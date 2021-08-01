SELECT pt.ProductName "Produto", pt.Price "Preço" FROM products pt
INNER JOIN order_details od
ON pt.ProductID = od.ProductID AND od.Quantity > 80
ORDER BY 1 ASC;
