-- USE hr;

-- SELECT * FROM hr.countries;
-- SELECT * FROM hr.regions;
SELECT
  c.COUNTRY_NAME AS `País`,
  IF(r.region_id = 1, 'incluído', 'não incluído') AS 'Status Inclusão'
FROM hr.countries AS c
INNER JOIN hr.regions AS r
ON c.REGION_ID = r.REGION_ID
ORDER BY País ASC
;