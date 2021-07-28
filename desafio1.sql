SELECT
    c.COUNTRY_NAME AS `País`,
    IF (
        r.REGION_NAME LIKE 'Europe',
        'incluído',
        'não incluído'
    ) AS `Status Inclusão`
FROM
    countries AS c
JOIN
    regions AS r
ON
    c.REGION_ID = r.REGION_ID
ORDER BY
    c.COUNTRY_NAME ASC;
