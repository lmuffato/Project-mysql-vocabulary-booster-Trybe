USE hr;
DELIMITER $$

CREATE PROCEDURE buscar_media_por_cargo(IN job VARCHAR(40))
BEGIN
  SELECT ROUND(AVG(SALARY), 2) AS 'Média salarial' FROM employees
  WHERE JOB_ID IN (SELECT JOB_ID FROM jobs
  WHERE JOB_TITLE = job);
END $$

DELIMITER ;

CALL buscar_media_por_cargo('Programmer');