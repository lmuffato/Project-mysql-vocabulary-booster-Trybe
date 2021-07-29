SELECT c.country_name AS `País`,
IF(r.region_name = 'Europe', 'incluído', 'não incluído') AS `Status Inclusão`
FROM hr.countries AS c
INNER JOIN hr.regions AS r
ON c.REGION_ID = r.REGION_ID
ORDER BY `País`;
