SELECT
  DISTINCT t.Country AS 'País'
FROM
  (SELECT
    CustomerName, Country
  FROM
    w3schools.customers
  UNION ALL
  SELECT
    SupplierName, Country
  FROM
    w3schools.suppliers) AS t
ORDER BY 1
LIMIT 5;
