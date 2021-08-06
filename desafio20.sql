/* 20 - Toda pessoa funcionária no banco hr possui um histórico completo de cargos. Logo, crie uma procedure chamada exibir_historico_completo_por_funcionario que, dado o e-mail de uma pessoa funcionária, retorna todos os cargos em seu histórico
Use o banco hr como referência

Toda pessoa funcionária no banco hr possui um histórico completo de cargos. Logo, crie uma procedure chamada exibir_historico_completo_por_funcionario que, dado o e-mail de uma pessoa funcionária, retorna todos os cargos em seu histórico. Sua procedure deve retornar três colunas:

  A) A primeira coluna deve possuir o alias "Nome completo" e exibir o nome completo da pessoa funcionária (não se esqueça do espaço entre o nome e o sobrenome).
  B) A segunda coluna deve possuir o alias "Departamento" e exibir o departamento que a pessoa já fez parte.
  C) A terceira coluna deve possuir o alias "Cargo" e exibir cargo que a pessoa já ocupou.

Os resultados devem estar ordenados pelo nome do departamento em ordem alfabética. Em caso de empate no nome do departamento, ordene os resultados pelo nome do cargo em ordem alfabética.

Confirme a execução correta da procedure, chamando-a e passando o email "NKOCHHAR":

CALL exibir_historico_completo_por_funcionario('NKOCHHAR');

Chamando-a dessa forma, sua procedure deve mostrar que a pessoa funcionária Neena Kochhar teve dois cargos em seu histórico: um como Accounting Manager no departamento Accounting e o outro como Public Accountant no departamento Accounting, nessa ordem. */
DELIMITER $$
CREATE PROCEDURE exibir_historico_completo_por_funcionario(IN email VARCHAR(100))
BEGIN
SELECT
CONCAT(e.FIRST_NAME, ' ', e.LAST_NAME) AS `Nome completo`,
d.DEPARTMENT_NAME AS `Departamento`,
j.JOB_TITLE AS `Cargo`
FROM hr.job_history jh
INNER JOIN hr.employees e
ON jh.EMPLOYEE_ID = e.EMPLOYEE_ID
INNER JOIN hr.departments d
ON jh.DEPARTMENT_ID = d.DEPARTMENT_ID
INNER JOIN hr.jobs j
ON jh.JOB_ID = j.JOB_ID
WHERE e.EMAIL = email
ORDER BY `Departamento`, `Cargo`;
END $$
DELIMITER ;

CALL exibir_historico_completo_por_funcionario('NKOCHHAR');
