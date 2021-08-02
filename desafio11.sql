SELECT
  *
FROM
  (
    SELECT
      c1.ContactName AS 'Nome',
      c1.Country AS 'País',
      COUNT(*) - 1 AS 'Número de compatriotas'
    FROM
      w3schools.customers c1,
      w3schools.customers c2
    WHERE
      c1.Country = c2.Country
    GROUP BY
      c1.CustomerID
  ) as countrymen
WHERE
  `Número de compatriotas` > 0
ORDER BY
  `Nome`;
