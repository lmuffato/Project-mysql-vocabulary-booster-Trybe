SELECT
  `COUNTRY_NAME` AS `País`,
  IF (
    regions.REGION_ID = 1,
    'incluído',
    'não incluído'
  ) AS `Status Inclusão`
FROM
  `hr`.countries AS `countries`
  INNER JOIN `hr`.regions AS `regions` ON `countries`.REGION_ID = `regions`.REGION_ID
ORDER BY
  `País` ASC;
