(SELECT Country AS `País` FROM w3schools.customers ORDER BY `País` LIMIT 10)
UNION
(SELECT Country AS `País` FROM w3schools.suppliers ORDER BY `País` LIMIT 10)
ORDER BY `País` LIMIT 5;
