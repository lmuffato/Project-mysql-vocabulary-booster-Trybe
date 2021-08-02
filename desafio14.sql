SELECT t1.COUNTRY AS País FROM w3schools.customers AS t1
UNION
SELECT t2.COUNTRY AS País FROM w3schools.suppliers AS t2
ORDER BY País
LIMIT 5;
