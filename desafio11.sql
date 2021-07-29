SELECT
  `customer`.ContactName AS `Nome`,
  `customer`.Country AS `País`,
  COUNT(`customer`.Country) AS `Número de compatriotas`
FROM
  `w3schools`.customers AS `customer`,
  `w3schools`.customers AS `customers`
WHERE
  `customer`.Country = `customers`.Country
  AND `customer`.ContactName <> `customers`.ContactName
GROUP BY
  `customer`.ContactName,
  `customers`.Country;
