(SELECT Country AS 'País' FROM w3schools.customers)
UNION
(SELECT Country FROM w3schools.suppliers)
ORDER BY `País`
LIMIT 5;
/* Consultei o código do GSantana para entender como
renderizaria somente uma coluna, tendo duas subqueries*/
