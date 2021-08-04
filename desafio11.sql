SELECT ContactName AS `Nome`,
  Country AS `País`,
  (
    SELECT COUNT(*) - 1
    FROM w3schools.customers
    WHERE c.Country = Country
  ) AS `Número de compatriotas`
FROM w3schools.customers AS c
HAVING `Número de compatriotas` >= 1
ORDER BY `Nome` ASC;
