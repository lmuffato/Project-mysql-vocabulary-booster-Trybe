SELECT c.COUNTRY_NAME AS 'País', 
	IF(r.REGION_ID = 1, 'Incluído', 'Não Incluído') AS 'Status Inclusão'
FROM hr.countries AS c
INNER JOIN hr.regions as r
ON r.REGION_ID = c.REGION_ID
ORDER BY COUNTRY_NAME;
