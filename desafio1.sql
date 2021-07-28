SELECT
  c.COUNTRY_NAME AS País,
  (
    SELECT CASE
    WHEN r.REGION_NAME = 'Europe' THEN 'incluído'
    ELSE 'não incluído'
    END
  ) AS `Status Inclusão`
FROM hr.countries AS c
LEFT JOIN hr.regions AS r
ON c.REGION_ID = r.REGION_ID
ORDER BY c.COUNTRY_NAME;
