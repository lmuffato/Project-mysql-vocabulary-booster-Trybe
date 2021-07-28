USE hr;

SELECT COUNTRY_NAME AS 'País',
CASE 
	WHEN REGION_ID = 1 THEN 'incluído'
    ELSE 'não classificado'
END AS 'Status Inclusão'
FROM countries
ORDER BY COUNTRY_NAME;