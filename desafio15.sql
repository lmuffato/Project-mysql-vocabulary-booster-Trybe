USE hr;
DELIMITER $$

CREATE PROCEDURE buscar_media_por_cargo(IN office VARCHAR(100))
BEGIN
  SELECT ROUND(AVG(SALARY),2) AS 'Média salarial'
  FROM hr.employees e
  INNER JOIN hr.jobs j ON j.JOB_ID = e.JOB_ID
  WHERE j.JOB_TITLE = office;
END $$

DELIMITER ;

CALL buscar_media_por_cargo('Programmer');
