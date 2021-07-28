SELECT
  c.COUNTRY_NAME AS "País",
  IF(
    r.REGION_NAME LIKE "Europe",
    "incluído",
    "não incluído"
  ) AS "Status Inclusão"
FROM
  hr.countries c
  INNER JOIN hr.regions r ON c.REGION_ID = r.REGION_ID;
