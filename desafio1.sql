SELECT 
	COUNTRY_NAME AS 'País',
    IF(REGION_ID > 1, 
    'não incluído', 
    'incluído') AS 'Status Inclusão'
FROM 
	hr.countries
ORDER BY COUNTRY_NAME;
