SELECT t1.COUNTRY_NAME AS País, IF(t2.REGION_NAME = 'Europe', 'incluído', 'não incluído') AS  'Status Inclusão'
FROM hr.countries AS t1
INNER JOIN	hr.regions AS t2
ON t1.REGION_ID=t2.REGION_ID
ORDER BY País;
