SELECT
  c.COUNTRY_NAME AS 'País',
  IF(
    c.REGION_ID = (
      SELECT
        r.REGION_ID
      FROM
        hr.regions r
      WHERE
        r.REGION_NAME = 'Europe'
    ),
    'incluído',
    'não incluído'
  ) AS 'Status Inclusão'
FROM
  hr.countries c
  ORDER BY `País`;
