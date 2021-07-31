DELIMITER $$

CREATE PROCEDURE exibir_historico_completo_por_funcionario(email VARCHAR(100))
BEGIN
SELECT CONCAT(e.FIRST_NAME, ' ', e.LAST_NAME)AS 'Nome completo',
d.DEPARTMENT_NAME AS 'Departamento',
j.JOB_TITLE AS 'Cargo'
FROM hr.employees AS e
INNER JOIN hr.job_history AS jh
INNER JOIN hr.departments AS d
INNER JOIN hr.jobs AS j
ON e.EMPLOYEE_ID = jh.EMP
ORDER BY `Departamento`, `Cargo`;
END $$

DELIMITER ;
