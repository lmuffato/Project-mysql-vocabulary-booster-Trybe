(SELECT Country as País from w3schools.customers)
UNION 
(SELECT Country as País from w3schools.suppliers) 
ORDER BY País
LIMIT 5;
