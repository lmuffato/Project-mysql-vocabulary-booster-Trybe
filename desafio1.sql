SELECT  as "País", IF(region_id = 1, 'incluído', 'não incluído') AS "Status Inclusão"
FROM hr.countries;
