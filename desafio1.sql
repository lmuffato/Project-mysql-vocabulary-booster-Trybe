SELECT country_name AS `País`,
IF (region_id = 1, 'incluído', 'não incluído') AS `Status Inclusão`
FROM countries
ORDER BY country_name;
