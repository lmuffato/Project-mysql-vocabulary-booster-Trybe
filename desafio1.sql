SELECT
  COUNTRY_NAME AS `País`,
  CASE
    WHEN REGION_ID = 1 THEN 'incluído'
    ELSE 'não incluído'
  END AS `Status Inclusão`
FROM hr.countries
ORDER BY `País`;
