-- SELECT distinct * FROM w3schools.customers ORDER BY Country; -- COUNTRY DO CONSUMIDOR

-- SELECT distinct * FROM w3schools.suppliers ORDER BY Country; -- COUNTRY DA EMPRESA

SELECT t1.Country AS `País` FROM w3schools.customers AS t1
UNION
SELECT t2.Country FROM w3schools.suppliers AS t2
ORDER BY `País`
LIMIT 5;
