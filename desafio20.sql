USE hr;
DROP PROCEDURE IF EXISTS exibir_historico_completo_por_funcionario;
DELIMITER $$

CREATE PROCEDURE exibir_historico_completo_por_funcionario(IN employee_email VARCHAR(50))
BEGIN
SELECT CONCAT(E.FIRST_NAME, ' ', E.LAST_NAME) AS `Nome completo`,
D.DEPARTMENT_NAME AS `Departamento`,
JS.JOB_TITLE AS `Cargo`
FROM hr.job_history AS JH
INNER JOIN hr.employees AS E
ON JH.EMPLOYEE_ID=E.EMPLOYEE_ID
INNER JOIN hr.departments AS D
ON JH.DEPARTMENT_ID=D.DEPARTMENT_ID
INNER JOIN hr.jobs AS JS
ON JH.JOB_ID=JS.JOB_ID
WHERE JH.EMPLOYEE_ID IN (
SELECT E.EMPLOYEE_ID FROM hr.employees AS E
WHERE E.EMAIL=employee_email)
ORDER BY `Departamento`, Cargo;
END $$

DELIMITER ;

CALL exibir_historico_completo_por_funcionario('NKOCHHAR');
