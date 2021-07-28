USE hr;
DELIMITER $$

CREATE PROCEDURE buscar_media_por_cargo(IN job VARCHAR(50))
BEGIN 
   SELECT ROUND(AVG(SALARY),2) FROM employees 
   WHERE JOB_ID = (
     SELECT JOB_ID FROM jobs
     WHERE JOB_TITLE = job
     );
END$$

DELIMITER $$

