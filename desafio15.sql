USE hr;
DELIMITER $$

CREATE PROCEDURE buscar_media_por_cargo( IN office VARCHAR(200))
BEGIN
SELECT ROUND(AVG ( employ.SALARY ), 2) AS "Média salarial"
FROM hr.employees AS employ
INNER JOIN hr.jobs AS job
ON employ.JOB_ID = job.JOB_ID
WHERE job.JOB_TITLE = office
GROUP BY job.JOB_TITLE ; 
END $$

DELIMITER ;

CALL buscar_media_por_cargo('Programmer');
