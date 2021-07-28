(SELECT Country from w3schools.customers)
UNION 
(SELECT Country from w3schools.suppliers)
ORDER BY Country 
LIMIT 5;
