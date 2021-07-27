USE hr;
DELIMITER $$
CREATE FUNCTION buscar_quantidade_de_empregos_por_funcionario(emailEmployee VARCHAR(25))
RETURNS INT READS SQL DATA
BEGIN
DECLARE historico INT;
SELECT COUNT(jobs.EMPLOYEE_ID)
FROM hr.job_history AS jobs
INNER JOIN hr.employees AS employees ON jobs.EMPLOYEE_ID = employees.EMPLOYEE_ID
WHERE employees.EMAIL = emailEmployee
INTO historico;
RETURN historico;
END $$
DELIMITER ;