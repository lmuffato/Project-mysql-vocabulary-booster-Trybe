SELECT COUNTRY_NAME AS 'País',IF (REGION_ID = 1, 'incluido', 'não incluido') FROM hr.countries ORDER BY COUNTRY_NAME ASC;
