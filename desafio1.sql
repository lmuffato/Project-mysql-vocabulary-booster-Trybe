-- Exiba os países e indicando se cada um deles se encontra ou não na região formada pela Europa

SELECT COUNTRY_NAME AS 'País',
IF(REGION_ID = 1, 'incluído', 'não incluído') AS 'Status Inclusão' 
FROM hr.countries;

SELECT country.COUNTRY_NAME 'País', IF(region.REGION_ID = 1, 'incluido', 'não incluido') 'Status Inclusão'
FROM hr.countries AS country
INNER JOIN hr.regions AS region
ON country.REGION_ID = region.REGION_ID;
