SELECT
    DISTINCT Country AS `País`
FROM
    suppliers
UNION
    SELECT
        DISTINCT Country AS `País`
    FROM
        customers
ORDER BY
    `País`
LIMIT 5;
