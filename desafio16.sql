USE hr;
DELIMITER $$ 

CREATE FUNCTION buscar_quantidade_de_empregos_por_funcionario(email_employees VARCHAR(25))
RETURNS INT READS SQL DATA
BEGIN 
    DECLARE quant_emp INT;
    SELECT 
    COUNT(*)
FROM
    hr.employees AS emp
        INNER JOIN
    hr.job_history AS job_H ON job_H.EMPLOYEE_ID = emp.EMPLOYEE_ID
WHERE emp.EMAIL = email_employees INTO quant_emp;
    RETURN quant_emp; 
END $$ 

DELIMITER ; 
