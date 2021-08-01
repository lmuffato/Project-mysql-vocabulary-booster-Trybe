SELECT  ct.Country FROM customers ct
UNION
SELECT sp.Country FROM suppliers sp
ORDER BY 1 ASC
LIMIT 5;
