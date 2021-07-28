SELECT country_name AS País,
CASE
  WHEN region_id = 1 THEN 'incluido'
  ELSE 'não incluido'
END AS 'Status Inclusão'
FROM hr.countries
ORDER BY País ASC;
