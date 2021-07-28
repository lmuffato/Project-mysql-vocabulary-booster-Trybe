USE hr;
DELIMITER $$

CREATE PROCEDURE buscar_media_por_cargo(IN titulo_do_cargo VARCHAR(100))
BEGIN
SELECT ROUND(AVG(SALARY),2) AS 'Média salarial' 
FROM hr.employees AS emp
INNER JOIN hr.jobs AS j
ON emp.JOB_ID = j.JOB_ID
WHERE j.JOB_TITLE = titulo_do_cargo;
END $$

DELIMITER ;
