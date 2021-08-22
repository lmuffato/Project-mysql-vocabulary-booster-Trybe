SELECT c.country_name AS 'País', IF(r.region_name = 'Europe', 'incluído', 'não incluído') AS 'Status Inclusão'
FROM countries AS c
INNER JOIN regions AS r
ON c.region_id = r.region_id
ORDER BY País;
