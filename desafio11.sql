SELECT
c1.ContactName AS 'Nome',
c1.Country AS 'País',
COUNT(c2.ContactName) AS 'Número de compatriotas'
FROM w3schools.customers AS c1, w3schools.customers AS c2
WHERE c1.ContactName <> c2.ContactName AND c1.Country = c2.Country
GROUP BY c1.ContactName, c1.Country
ORDER BY `Nome` ASC;
/*Consutei o repositório do colega de classe Lucas Duque
tive dificuldade em estabelecer a lógica do self join*/
