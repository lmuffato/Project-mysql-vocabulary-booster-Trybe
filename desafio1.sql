SELECT
  COUNTRY_NAME AS `País`,
  CASE
    WHEN REGION_ID = 1 THEN 'Europe'
    ELSE 'não incluído'
  END AS `Status Inclusão`
FROM hr.countries
ORDER BY `País`;
