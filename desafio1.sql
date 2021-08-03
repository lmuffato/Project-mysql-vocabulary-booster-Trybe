SELECT COUNTRY_NAME AS País,
if(REGION_ID = 1, 'incluído', 'não incluído')
AS `Status Inclusão`
FROM hr.countries ORDER BY COUNTRY_NAME;
