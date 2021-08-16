/* 1 - Exiba os países e indicando se cada um deles se encontra ou não
na região formada pela Europa */
SELECT
c.COUNTRY_NAME AS `País`,
IF(r.REGION_NAME = 'Europe', 'incluído', 'não incluído') AS 'Status Inclusão'
FROM hr.countries AS c
INNER JOIN hr.regions AS r
ON r.REGION_ID = c.REGION_ID
ORDER BY `País` ASC;
