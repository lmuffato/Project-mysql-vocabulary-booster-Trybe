SELECT
    c.country_name País,
CASE
    WHEN r.region_name = 'Europe' THEN 'incluído'
    ELSE 'não incluído'
END 'Status Inclusão'
FROM
    hr.countries c
INNER JOIN
    hr.regions r
ON
    c.region_id = r.region_id
ORDER BY
    1;