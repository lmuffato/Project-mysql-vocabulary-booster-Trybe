SELECT
  t1.ContactName AS 'Nome',
  t1.Country AS 'País',
  (
    SELECT
      COUNT(*)
    FROM
      w3schools.customers AS t2
    WHERE
      t1.Country = t2.Country
  ) - 1 AS 'Número de compatriotas'
FROM
  w3schools.customers AS t1
WHERE
  (
    SELECT
      COUNT(*)
    FROM
      w3schools.customers AS t2
    WHERE
      t1.Country = t2.Country
  ) -1 > 0
ORDER BY
  `Nome`;
