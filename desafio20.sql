-- 20. Toda pessoa funcionária no banco hr possui um histórico completo de cargos.
-- Logo, crie uma procedure chamada exibir_historico_completo_por_funcionario
-- que, dado o e-mail de uma pessoa funcionária, retorna todos os cargos em seu histórico
USE hr;
DELIMITER $$

CREATE PROCEDURE exibir_historico_completo_por_funcionario(email varchar(25))
BEGIN
SELECT CONCAT(e.first_name, " ", e.last_name)
AS "Nome completo",
d.department_name
AS "Departamento",
j.job_title
AS "Cargo"
FROM job_history AS jh
INNER JOIN departments AS d
INNER JOIN jobs AS j
INNER JOIN employees AS e
ON (j.job_id = jh.job_id
  AND d.department_ID = jh.department_ID
  AND e.employee_ID = jh.employee_ID
  AND e.email LIKE CONCAT('%', email, '%')
)
ORDER BY jh.department_ID, j.job_title;
END $$
DELIMITER ;
