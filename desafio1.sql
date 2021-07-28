SELECT
  country_name as 'País',
  CASE
    WHEN region_id = 1 THEN 'incluído'
    ELSE 'não incluído'
  END AS "Status Inclusão"
FROM
  hr.countries
ORDER BY
  country_name ASC;
