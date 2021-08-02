SELECT country.country_name AS `País`,
  IF(region.region_name LIKE 'Europe',
    'incluído', 'não incluído') 'Status Inclusão'
FROM hr.countries AS country
    INNER JOIN
  hr.regions AS region ON country.region_id = region.region_id
ORDER BY `País`;
