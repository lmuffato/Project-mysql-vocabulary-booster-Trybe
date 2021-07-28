-- Exiba os países e indicando se cada um deles se encontra ou não na região formada pela Europa

SELECT COUNTRY_NAME AS 'País',
IF(REGION_ID = 1, 'incluido', 'não incluido') AS 'Status Inclusão' 
FROM hr.countries;
