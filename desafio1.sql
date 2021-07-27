# 1 - Exiba os países e indicando se cada um deles se encontra ou não na região formada pela Europa

SELECT
  C.COUNTRY_NAME AS País,
  CASE
    WHEN R.REGION_NAME = 'Europe' THEN 'incluído'
    ELSE 'não incluído'
  END AS 'Status Inclusão'
FROM
  hr.countries AS C
    INNER JOIN
  hr.regions AS R ON C.REGION_ID = R.REGION_ID
ORDER BY C.COUNTRY_NAME ASC;
