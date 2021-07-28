SELECT
  countries.COUNTRY_NAME AS `País`,
  IF (
    regions.REGION_ID = 1,
    'incluído',
    'não incluído'
  ) AS `Status Inclusão`
FROM
  countries
  INNER JOIN regions ON countries.REGION_ID = regions.REGION_ID
ORDER BY
  countries.COUNTRY_NAME ASC;
