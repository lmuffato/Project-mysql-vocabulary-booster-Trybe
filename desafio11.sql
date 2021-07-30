SELECT
  c1.ContactName AS Nome,
  c1.Country AS País,
  COUNT(c1.Country) - 1 AS 'Número de compatriotas'
FROM
  customers AS c1
INNER JOIN
  customers AS c2 ON c1.Country = c2.Country
GROUP BY
  Nome, País
HAVING
  `Número de compatriotas` >= 1
ORDER BY
  Nome;
