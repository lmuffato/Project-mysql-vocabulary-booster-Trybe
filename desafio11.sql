SELECT customers.ContactName AS Nome,
customers.Country AS País,
COUNT(customers.Country) AS 'Número de compatriotas'
FROM w3schools.customers AS customers, w3schools.customers AS customers2
WHERE customers.ContactName <> customers2.ContactName
AND customers.Country = customers2.Country
GROUP BY Nome, País
ORDER BY Nome;

-- Para esse requisito foi utilizado SELF JOIN do Bloco 21.2
-- Por isso o FROM tem 2 tabelas iguais, porém com alias diferentes
