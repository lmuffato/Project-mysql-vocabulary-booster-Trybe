USE hr;
DELIMITER $$

CREATE PROCEDURE buscar_media_por_cargo(IN JOB VARCHAR(200))
BEGIN
  SELECT ROUND(AVG(emp.SALARY), 2) AS 'Média salarial'
  FROM hr.jobs AS job
  INNER JOIN hr.employees AS emp
  ON job.JOB_ID = emp.JOB_ID
  WHERE job.JOB_TITLE = JOB;
END $$

DELIMITER ;

CALL buscar_media_por_cargo('Programmer');
