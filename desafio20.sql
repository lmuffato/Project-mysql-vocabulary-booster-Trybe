USE hr.employees

DELIMITER $$
CREATE PROCEDURE exibir_historico_completo_por_funcionario(IN email VARCHAR(64))
BEGIN
SELECT
CONCAT(e.FIRST_NAME, ' ', e.LAST_NAME) AS 'Nome completo',
d.DEPARTMENT_NAME AS 'Departamento',
j.JOB_TITLE AS 'Cargo'
FROM hr.employees AS e
JOIN hr.job_history AS h ON e.EMPLOYEE_ID = h.EMPLOYEE_ID
JOIN hr.departments AS d ON h.DEPARTMENT_ID = d.DEPARTMENT_ID
JOIN hr.jobs AS j ON h.JOB_ID = j.JOB_ID
WHERE e.EMAIL = email
ORDER BY 2, 3;
END $$

DELIMITER ;
