SELECT
  c.country_name AS 'País',
  IF(r.region_name = 'Europe', 'incluído', 'não incluído') AS 'Status Inclusão'
FROM hr.countries as c
LEFT JOIN
hr.regions AS r ON c.REGION_ID = r.REGION_ID
ORDER BY c.country_name;
