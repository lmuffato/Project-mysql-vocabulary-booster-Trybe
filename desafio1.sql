SELECT countries.COUNTRY_NAME AS 'País',
IF (region_id = 1, 'incluído', 'não incluído') as 'Status Inclusão'
FROM hr.countries
ORDER BY COUNTRY_NAME ASC;
