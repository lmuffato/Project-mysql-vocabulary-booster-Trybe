SELECT
  C.ContactName AS 'Nome',
  C.Country AS 'País',
  (
    SELECT
      (COUNT(*) - 1)
    FROM
      w3schools.customers AS C2
    WHERE
      C2.Country = C.Country
  ) AS 'Número de compatriotas'
FROM
  w3schools.customers AS C
WHERE
  (
    SELECT
      (COUNT(*) - 1)
    FROM
      w3schools.customers AS C2
    WHERE
      C2.Country = C.Country
  ) <> 0
ORDER BY
  Nome;
