USE hr;
DELIMITER $$ 

CREATE PROCEDURE buscar_media_por_cargo( IN cargo VARCHAR(100) )
BEGIN 
  SELECT AVG(SALARY) 
  FROM hr.employees AS E
  INNER JOIN hr.jobs AS J
  WHERE E.JOB_ID = J.JOB_ID AND J.JOB_TITLE = cargo;
END $$ 

DELIMITER ;
