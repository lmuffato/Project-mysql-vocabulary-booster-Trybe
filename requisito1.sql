SELECT c.COUNTRY_NAME, IF(c.REGION_ID = 1, "incluído", "não incluído") AS "Status Inclusão" FROM countries c
ORDER BY c.COUNTRY_NAME ASC;
