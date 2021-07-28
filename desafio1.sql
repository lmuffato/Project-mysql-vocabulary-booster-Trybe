SELECT t1.COUNTRY_NAME AS País, IF(t2.REGION_NAME = 'EUROPE', 'incluído', 'não incluido') AS  'Status Inclusão'
FROM hr.countries AS t1
INNER JOIN	hr.regions AS t2
ON t1.REGION_ID=t2.REGION_ID
ORDER BY País;
