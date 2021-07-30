DROP PROCEDURE IF EXISTS `buscar_media_por_cargo`;

USE hr;
DELIMITER $$;

CREATE PROCEDURE buscar_media_por_cargo(IN jobTitle VARCHAR(50))
BEGIN
  SELECT ROUND(AVG(SALARY), 2) AS `Média salarial` FROM employees AS E
  WHERE E.JOB_ID = (SELECT J.JOB_ID FROM jobs AS J WHERE J.JOB_TITLE = jobTitle);
END $$

DELIMITER ;
