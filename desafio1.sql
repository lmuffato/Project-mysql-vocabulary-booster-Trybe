SELECT pais.COUNTRY_NAME AS 'País', 
-- POSIÇÃO DE ONDE COLOCAR O IF RETIRADA DO PR DO GUILHERME DORNELLES
IF(status.REGION_NAME = 'Europe', 'incluído', 'não incluído')  AS 'Status Inclusão'
FROM hr.countries AS pais
INNER JOIN hr.regions AS status
ON status.REGION_ID = pais.REGION_ID;
