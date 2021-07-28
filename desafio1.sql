SELECT 
        c.COUNTRY_NAME as País, 
        IF(c.REGION_ID = 1, 'incluído', 'não incluído') as "Status Inclusão" 
FROM 
      countries as c
ORDER BY c.COUNTRY_NAME;
