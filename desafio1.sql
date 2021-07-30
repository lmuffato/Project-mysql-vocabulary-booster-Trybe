SELECT c.COUNTRY_NAME AS 'País', IF(c.REGION_ID = 1, 'incluído', 'não incluído') AS 'Status Inclusão'
FROM hr.countries AS c;
