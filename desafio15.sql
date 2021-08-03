DELIMITER $$

CREATE PROCEDURE buscar_media_por_cargo(IN cargo VARCHAR(90))
BEGIN
  SELECT ROUND(AVG(SALARY), 2) AS 'Média Salarial'
  FROM hr.employees AS e, hr.jobs AS j
  WHERE e.JOB_ID = j.JOB_ID AND j.JOB_TITLE = cargo;
END $$

DELIMITER ;
