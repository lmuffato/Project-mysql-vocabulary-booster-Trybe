(SELECT Country AS País FROM w3schools.customers GROUP BY País)
UNION ALL
(SELECT Country AS País FROM w3schools.suppliers GROUP BY País)
ORDER BY País
LIMIT 5;
