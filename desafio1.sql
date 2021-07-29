SELECT country_name AS 'País',
    IF(region_ID = 1, 'incluído', 'não incluído') AS 'Status Inclusão'
FROM hr.countries
ORDER BY `País`;
