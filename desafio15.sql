DELIMITER $$

CREATE PROCEDURE buscar_media_por_cargo(IN cargo VARCHAR(100))
BEGIN
  SELECT ROUND(AVG(employees.SALARY), 2) AS 'Média salarial'
  FROM hr.jobs AS jobs
  INNER JOIN hr.employees AS employees ON jobs.JOB_ID = employees.JOB_ID
  WHERE jobs.JOB_TITLE = cargo;
END $$

DELIMITER ;

CALL buscar_media_por_cargo('Programmer');
