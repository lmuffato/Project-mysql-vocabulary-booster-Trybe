SELECT
  countrymen_1.ContactName AS 'Nome',
  countrymen_1.Country AS 'País',
  COUNT(countrymen_1.Country) - 1 AS 'Número de compatriotas'
FROM
  w3schools.customers AS countrymen_1,
  w3schools.customers AS countrymen_2
WHERE
  countrymen_1.Country = countrymen_2.Country
GROUP BY
  `Nome`,
  countrymen_1.Country
ORDER BY `Nome`;
