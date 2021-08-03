USE hr;
 
DROP PROCEDURE IF EXISTS buscar_media_por_cargo;

DELIMITER $$

CREATE PROCEDURE `buscar_media_por_cargo`(IN cargo VARCHAR(250))
BEGIN
  SELECT ROUND(AVG(e.salary),2) AS 'Média salarial' FROM employees AS e
  INNER JOIN jobs AS j
  WHERE e.JOB_ID=j.JOB_ID
  AND j.JOB_TITLE=cargo;
END $$

DELIMITER ;
