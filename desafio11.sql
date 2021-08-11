-- challenge 11;
-- https://github.com/tryber/sd-010-a-mysql-vocabulary-booster/pull/85/commits/74a384e65e11ebd0e2f4fc8fccb504f3383600b7

SELECT customers.ContactName AS Nome,
customers.Country AS País,
COUNT(customers.Country) AS `Número de compatriotas`
FROM w3schools.customers AS customers, w3schools.customers AS customer
WHERE customer.Country=customers.Country AND customer.ContactName<>customers.ContactName
GROUP BY Nome, País
ORDER BY Nome;
