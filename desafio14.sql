SELECT
  C.Country AS 'País'
FROM
  w3schools.customers AS C
UNION
SELECT
  S.Country
FROM
  w3schools.suppliers AS S
ORDER BY
  `País`
LIMIT
  5;
