SELECT
  (
    SELECT ProductName FROM products p
    WHERE p.ProductID = od.ProductID
  ) AS Produto,
  (
    SELECT Price FROM products p
    WHERE p.ProductID = od.ProductID
  ) AS Preço
FROM order_details od
WHERE od.Quantity > 80
ORDER BY 1;
