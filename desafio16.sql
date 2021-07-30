USE hr;
DELIMITER $$

CREATE FUNCTION buscar_quantidade_de_empregos_por_funcionario(email VARCHAR(50))
RETURNS DOUBLE READS SQL DATA
BEGIN
DECLARE numberOfJobs DOUBLE;
SELECT COUNT(*)
FROM hr.employees AS employees
INNER JOIN hr.job_history AS job_history ON employees.EMAIL = email
AND job_history.employee_id = employees.EMPLOYEE_ID INTO numberOfJobs;
RETURN numberOfJobs;

END $$

DELIMITER ;
