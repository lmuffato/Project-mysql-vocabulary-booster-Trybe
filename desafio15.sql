DELIMITER $$

CREATE PROCEDURE buscar_media_por_cargo(IN jobSelected VARCHAR(50))
BEGIN
	SELECT ROUND(AVG(emp.SALARY), 2) AS `Média salarial`
    FROM hr.employees AS `emp`
    INNER JOIN hr.jobs AS `job`
    ON emp.JOB_ID = job.JOB_ID
    WHERE job.JOB_TITLE LIKE jobSelected;
END $$ 

DELIMITER ; 

CALL buscar_media_por_cargo('Programmer');