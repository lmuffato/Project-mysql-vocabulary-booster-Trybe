-- Exiba os países e indicando se cada um deles se encontra ou não na região formada pela Europa

SELECT COUNTRY_NAME AS `País`,
IF(REGION_ID = 1, 'incluído', 'não incluído') AS 'Status Inclusão' 
FROM hr.countries
ORDER BY `País` ASC;
