USE hr;
DELIMITER $$

CREATE PROCEDURE exibir_historico_completo_por_funcionario(email_employee VARCHAR(20))
BEGIN
SELECT CONCAT(E.FIRST_NAME,' ',E.LAST_NAME) AS 'Nome completo',
D.DEPARTMENT_NAME AS 'Departamento',
J.JOB_TITLE AS 'Cargo'
FROM employees E
INNER JOIN job_history JH
ON E.EMPLOYEE_ID = JH.EMPLOYEE_ID
INNER JOIN jobs J
ON J.JOB_ID = JH.JOB_ID
INNER JOIN departments D
ON D.DEPARTMENT_ID = JH.DEPARTMENT_ID
WHERE E.EMAIL = email_employee
ORDER BY `Departamento`, `Cargo`;
END $$

DELIMITER ;
