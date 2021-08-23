DELIMITER $$
CREATE FUNCTION buscar_quantidade_de_empregos_por_funcionario(email varchar(30))
RETURNS INT READS SQL DATA
    BEGIN
        DECLARE output INT;
        SELECT COUNT(jobs.JOB_ID)
        FROM hr.employees employees
        INNER JOIN hr.job_history jobs
            ON employees.EMPLOYEE_ID = jobs.EMPLOYEE_ID
        WHERE employees.EMAIL = email
        INTO output;
        RETURN output;
    END $$
DELIMITER;
