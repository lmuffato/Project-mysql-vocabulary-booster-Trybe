SELECT 
  C.COUNTRY_NAME AS 'País', 
  IF((SELECT REGION_NAME FROM hr.regions AS R
    WHERE R.REGION_ID = C.REGION_ID) = 'Europe', 'incluso', 'não incluso') AS 'Status Inclusão'
FROM hr.countries AS C;
