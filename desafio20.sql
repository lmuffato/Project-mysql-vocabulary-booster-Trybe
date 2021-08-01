USE hr;

DELIMITER $$
CREATE PROCEDURE exibir_historico_completo_por_funcionario(IN email VARCHAR(50))
BEGIN
SELECT CONCAT(e.FIRST_NAME, ' ', e.LAST_NAME) AS 'Nome completo',
d.DEPARTMENT_NAME AS 'Departamento',
j.JOB_TITLE AS 'Cargo'
FROM employees e
INNER JOIN job_history h ON e.EMPLOYEE_ID = h.EMPLOYEE_ID
INNER JOIN departments d ON h.DEPARTMENT_ID = d.DEPARTMENT_ID
INNER JOIN jobs j ON j.JOB_ID = h.JOB_ID
WHERE e.EMAIL = email
ORDER BY `Departamento`, `Cargo`;
END $$

DELIMITER ;
