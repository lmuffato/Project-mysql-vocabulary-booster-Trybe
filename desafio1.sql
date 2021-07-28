SELECT COUNTRY_NAME AS Pais, IF (REGION_ID = 1, 'incluído', 'não incluído') AS 'Status Inclusão' FROM hr.countries; 
