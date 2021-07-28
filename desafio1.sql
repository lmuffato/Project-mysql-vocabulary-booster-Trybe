SELECT 
    COUNTRY_NAME AS 'País',
    IF(REGION_ID = (SELECT 
                REGION_ID
            FROM
                regions
            WHERE
                REGION_NAME = 'Europe'),
        'incluído',
        'não incluído') AS 'Status Inclusão'
FROM
    countries
ORDER BY COUNTRY_NAME;
