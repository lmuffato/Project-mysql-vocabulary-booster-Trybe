-- 1 - Exiba os países e indicando se cada um deles se encontra ou não na região formada pela Europa
USE hr;
SELECT 
  COUNTRY_NAME AS 'País',
    IF (REGION_ID = 1, 'incluído', 'não incluído') AS 'Status Inclusão'
FROM countries
ORDER BY COUNTRY_NAME ASC;
