SELECT c.Country AS `País`
FROM (
  SELECT Country FROM w3schools.customers
  UNION
  SELECT Country FROM w3schools.suppliers
) c
ORDER BY `País` ASC
LIMIT 5;
