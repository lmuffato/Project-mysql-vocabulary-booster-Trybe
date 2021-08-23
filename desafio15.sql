DELIMITER $$
CREATE PROCEDURE buscar_media_por_cargo(IN cargo VARCHAR(50))
BEGIN
SELECT
  ROUND(AVG(SALARY), 2) AS `Média salarial`
FROM hr.employees AS emp
INNER JOIN hr.jobs AS jobs
ON emp.JOB_ID = jobs.JOB_ID
WHERE jobs.JOB_TITLE = cargo
GROUP BY emp.JOB_ID;
END $$
DELIMITER ;
