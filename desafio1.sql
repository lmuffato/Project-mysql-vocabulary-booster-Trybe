SELECT c.COUNTRY_NAME AS `País`,
IF(r.REGION_NAME = 'Europe', 'incluído', 'não incluído') AS 'Status Inclusão'
FROM hr.countries c
INNER JOIN hr.regions r
ON r.REGION_ID = c.REGION_ID
ORDER BY `País` ASC;
