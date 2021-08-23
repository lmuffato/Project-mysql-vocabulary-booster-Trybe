USE hr.jobs
DELIMITER $$
CREATE PROCEDURE buscar_media_por_cargo(IN cargo VARCHAR(40))
BEGIN
SELECT
ROUND(AVG(e.SALARY), 2) AS 'Média salarial'
FROM hr.jobs AS j
INNER JOIN hr.employees AS e ON j.JOB_ID = e.JOB_ID
WHERE j.JOB_TITLE = cargo;
END $$
DELIMITER ;
