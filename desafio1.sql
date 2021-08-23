SELECT c1.COUNTRY_NAME AS "País",
 IF (r1.REGION_NAME = "Europe",
 "incluído", "não incluído") AS "Status Inclusão"
FROM hr.countries AS c1
INNER JOIN hr.regions AS r1
ON r1.REGION_ID = c1.REGION_ID
ORDER BY c1.COUNTRY_NAME;
