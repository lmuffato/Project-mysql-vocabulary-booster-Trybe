SELECT
  `products`.ProductName AS `Produto`,
  `products`.Price AS `Preço`
FROM
  `w3schools`.products AS `products`
  INNER JOIN `w3schools`.order_details AS `order_details` ON `order_details`.ProductID = `products`.ProductID
WHERE
  `order_details`.Quantity > 80
ORDER BY
  `Produto` ASC;
