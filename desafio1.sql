SELECT c.COUNTRY_NAME AS 'País',
  IF(R.REGION_NAME LIKE 'Europe',
    'incluído', 'não incluído') 'Status Inclusão'
FROM hr.countries AS c
	INNER JOIN
hr.regions AS r ON r.REGION_ID = c.REGION_ID
ORDER BY 'Pais';