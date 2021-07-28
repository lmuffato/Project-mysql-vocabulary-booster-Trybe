SELECT 
  C.COUNTRY_NAME 'País',
  IF(R.REGION_NAME LIKE 'Europe', 'incluído', 'não incluído') 'Status Inclusão'
FROM
  hr.countries C
    INNER JOIN
  hr.regions R 
    ON C.REGION_ID = R.REGION_ID
ORDER BY `País`;
