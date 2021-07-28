SELECT
    COUNTRY_NAME AS País,
    IF(REGION_ID = 1, 'incluído', 'não incluído') AS `Status de Inclusão`
FROM hr.countries;