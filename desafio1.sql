SELECT COUNTRY_NAME as "País",
IF(REGION_ID = 1, 'incluído', 'não incluído') AS 'Status Inclusão'
FROM hr.countries
ORDER BY COUNTRY_NAME ASC;
