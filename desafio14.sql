SELECT
  DISTINCT t.Country AS 'País'
FROM
  (SELECT
    Country
  FROM
    w3schools.customers
  UNION ALL
  SELECT
    Country
  FROM
    w3schools.suppliers) AS t
ORDER BY 1
LIMIT 5;
