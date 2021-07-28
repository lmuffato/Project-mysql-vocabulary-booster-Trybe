SELECT country_name, IF(region_id = 1, 'incluído', 'não incluído') AS Europe FROM hr.countries
ORDER BY country_name;
