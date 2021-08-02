SELECT
  *
FROM
  (
    SELECT
      p.ProductName AS 'Produto',
      MIN(od.Quantity) AS 'Mínima',
      MAX(od.Quantity) AS 'Máxima',
      ROUND(AVG(od.Quantity), 2) AS 'Média'
    FROM
      w3schools.products p
      INNER JOIN w3schools.order_details od ON od.ProductID = p.ProductID
    WHERE
      EXISTS (
        SELECT
          *
        FROM
          w3schools.order_details od
        WHERE
          p.ProductID = od.ProductID
      )
    GROUP BY
      od.ProductID
  ) AS order_product
WHERE
  `Média` > 20
ORDER BY `Média`, `Produto`;
