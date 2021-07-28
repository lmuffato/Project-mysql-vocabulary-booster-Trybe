SELECT País.COUNTRY_NAME AS País, 
IF(Regioes.REGION_NAME = 'Europe', 'incluído', 'não incluído') AS `Status Inclusão`
FROM hr.countries AS País
INNER JOIN hr.regions AS Regioes
ON País.REGION_ID = Regioes.REGION_ID
ORDER BY País ASC;
