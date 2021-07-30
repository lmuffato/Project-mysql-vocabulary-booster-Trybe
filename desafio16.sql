DELIMITER $$
CREATE FUNCTION buscar_quantidade_de_empregos_por_funcionario(emEmail VARCHAR(50))
RETURNS INT READS SQL DATA
BEGIN
DECLARE retornado INT;
SELECT
    count(jh.JOB_ID) AS 'total_empregos'
FROM
    hr.employees AS em
INNER JOIN hr.job_history AS jh ON em.EMPLOYEE_ID = jh.EMPLOYEE_ID
WHERE em.EMAIL = emEmail
GROUP BY jh.EMPLOYEE_ID INTO retornado;
RETURN retornado;
END $$
DELIMITER ;
