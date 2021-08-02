
SELECT 
    country AS 'País'
FROM
    ((SELECT 
        c.Country AS country
    FROM
        w3schools.customers AS c) UNION (SELECT 
        s.Country AS country
    FROM
        w3schools.suppliers AS s) ORDER BY country) AS t_union
LIMIT 5;
