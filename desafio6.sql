-- Faça um relatório que mostra o histórico de cargos das pessoas empregadas
-- Faça um relatório que mostra o histórico de cargos das pessoas empregadas.
-- Use o banco hr como referência
-- Monte uma query que exiba 04 colunas:
-- A primeira deve possuir o alias "Nome completo" e exibir o nome completo da pessoa empregada (não se esqueça do espaço entre o nome e o sobrenome).
-- A segunda deve possuir o alias "Cargo" e exibir o nome do cargo da pessoa.
-- A terceira deve possuir o alias "Data de início do cargo" e exibir a data que a pessoa iniciou o cargo.
-- A quarta deve possuir o alias "Departamento" e mostrar o nome do departamento em que a pessoa exerceu seu cargo.
-- Os resultados devem estar ordenados pelo nome completo das pessoas empregadas em ordem decrescente.
-- Em caso de empate no nome completo, ordene os resultados pelo nome do cargo em ordem alfabética.

SELECT CONCAT(employees.first_name, ' ', employees.last_name) AS `Nome completo`, jobs.job_title AS `Cargo`,
jobH.start_date AS `Data de início do cargo`, department_name AS 'Departamento'
FROM hr.employees AS employees
INNER JOIN hr.job_history AS jobH
ON jobH.employee_id = employees.employee_id
INNER JOIN hr.jobs AS jobs
ON jobs.job_id = jobH.job_id
INNER JOIN hr.departments AS dep
ON dep.department_id = jobH.department_id
ORDER BY `Nome completo` DESC, `Cargo`;
