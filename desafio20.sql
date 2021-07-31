-- 20 - Toda pessoa funcionária no banco hr possui um histórico completo de cargos. Logo, crie uma procedure chamada exibir_historico_completo_por_funcionario que, dado o e-mail de uma pessoa funcionária, retorna todos os cargos em seu histórico
-- Use o banco hr como referência
-- Toda pessoa funcionária no banco hr possui um histórico completo de cargos. Logo, crie uma procedure chamada exibir_historico_completo_por_funcionario que, dado o e-mail de uma pessoa funcionária, retorna todos os cargos em seu histórico. Sua procedure deve retornar três colunas:
-- A primeira coluna deve possuir o alias "Nome completo" e exibir o nome completo da pessoa funcionária (não se esqueça do espaço entre o nome e o sobrenome).
-- A segunda coluna deve possuir o alias "Departamento" e exibir o departamento que a pessoa já fez parte.
-- A terceira coluna deve possuir o alias "Cargo" e exibir cargo que a pessoa já ocupou.
-- Os resultados devem estar ordenados pelo nome do departamento em ordem alfabética. Em caso de empate no nome do departamento, ordene os resultados pelo nome do cargo em ordem alfabética.
-- Confirme a execução correta da procedure, chamando-a e passando o email "NKOCHHAR":
-- CALL exibir_historico_completo_por_funcionario('NKOCHHAR');
-- Chamando-a dessa forma, sua procedure deve mostrar que a pessoa funcionária Neena Kochhar teve dois cargos em seu histórico: um como Accounting Manager no departamento Accounting e o outro como Public Accountant no departamento Accounting, nessa ordem.

USE hr;

DROP PROCEDURE IF EXISTS exibir_historico_completo_por_funcionario;

DELIMITER $$

CREATE PROCEDURE exibir_historico_completo_por_funcionario (IN email_funcionario VARCHAR(40))
BEGIN
  SELECT
    CONCAT(E.FIRST_NAME, ' ', E.LAST_NAME) AS `Nome completo`,
    D.DEPARTMENT_NAME AS `Departamento`,
    J.JOB_TITLE AS `Cargo`
  FROM hr.employees E
  INNER JOIN hr.job_history JH
  ON JH.EMPLOYEE_ID = E.EMPLOYEE_ID
  INNER JOIN hr.departments D
  ON D.DEPARTMENT_ID = JH.DEPARTMENT_ID
  INNER JOIN hr.jobs J
  ON J.JOB_ID = JH.JOB_ID
  WHERE E.EMAIL = email_funcionario
  ORDER BY `Departamento`, `Cargo`;
END $$

DELIMITER ;
