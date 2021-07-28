SELECT c.country_name AS 'País', 
IF(r.REGION_NAME = 'Europe', 'incluído', 'não incluído') AS 'Status Inclusão'
FROM hr.countries AS c
INNER JOIN hr.regions AS r ON r.region_id = c.region_id
ORDER BY country_name ASC;
