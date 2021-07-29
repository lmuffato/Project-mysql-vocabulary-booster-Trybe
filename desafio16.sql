DELIMITER $$
CREATE PROCEDURE buscar_quantidade_de_empregos_por_funcionario(IN emEmail VARCHAR(50))
BEGIN
SELECT
    count(jh.JOB_ID)
FROM
    hr.employees AS em
INNER JOIN
	hr.job_history AS jh
ON em.EMPLOYEE_ID = jh.EMPLOYEE_ID
WHERE em.EMAIL = emEmail
GROUP BY jh.EMPLOYEE_ID;
END $$
DELIMITER ;

buscar_quantidade_de_empregos_por_funcionario()