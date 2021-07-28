SELECT 
    COUNTRY_NAME AS 'País',
    IF(REGION_NAME LIKE 'Europe',
        'incluído',
        'não incluído') AS 'Status Inclusão'
FROM
    hr.countries AS cnt
        INNER JOIN
    hr.regions AS rgn ON cnt.REGION_ID = rgn.REGION_ID
ORDER BY `País` ASC;
