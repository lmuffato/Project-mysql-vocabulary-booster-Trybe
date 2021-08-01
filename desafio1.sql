SELECT country.COUNTRY_NAME AS 'País', 
IF(regions.REGION_NAME = 'Europe', 'incluído', 'não incluído') AS 'Status Inclusão' 
FROM hr.countries AS country
INNER JOIN hr.regions AS regions
ON country.REGION_ID = regions.REGION_ID 
ORDER BY country.COUNTRY_NAME;
