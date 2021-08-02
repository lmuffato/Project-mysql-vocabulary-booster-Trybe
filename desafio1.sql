SELECT
    c.country_name País,
IF
    (
      r.region_name = 'Europe', 'incluído', 'não incluído'
    ) 'Status Inclusão'
FROM
    hr.countries c
INNER JOIN
    hr.regions r
USING
    (region_id)
ORDER BY
    1;
