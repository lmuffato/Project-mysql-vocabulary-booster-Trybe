USE hr;
DELIMITER $$

CREATE PROCEDURE buscar_media_por_cargo(IN cargo VARCHAR(35)) 
BEGIN 
SELECT ROUND(AVG(emp.SALARY), 2) AS "Média salarial" FROM employees AS emp 
INNER JOIN 
jobs AS job ON emp.JOB_ID = job.JOB_ID 
    WHERE cargo = job.JOB_TITLE;
END $$ 

DELIMITER ;
