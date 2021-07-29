SELECT
  `customers`.Country AS `País`
FROM
  `w3schools`.customers AS `customers`
UNION
SELECT
  `suppliers`.Country
FROM
  `w3schools`.suppliers AS `suppliers`
ORDER BY
  `País` ASC
LIMIT
  5;
