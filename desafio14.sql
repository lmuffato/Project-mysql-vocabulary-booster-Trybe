SELECT
  DISTINCT t.Country AS 'País'
FROM
  (
    SELECT
      CustomerName,
      Country
    FROM
      w3schools.customers
    UNION ALL
    SELECT
      SupplierName,
      Country
    FROM
      w3schools.suppliers
  ) AS t
ORDER BY
  Country
LIMIT
  5;
