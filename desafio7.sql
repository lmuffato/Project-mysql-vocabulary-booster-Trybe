-- Solução encontrada ao consultar o código de Patrick Morais - Turma 10-A
SELECT UPPER(CONCAT(e.FIRST_NAME, ' ', e.LAST_NAME)) AS `Nome completo`,
  jh.START_DATE AS `Data de início`,
  e.SALARY AS `Salário`
FROM hr.job_history AS jh
INNER JOIN hr.employees AS e
  ON jh.EMPLOYEE_ID = e.EMPLOYEE_ID
WHERE MONTH(jh.START_DATE) BETWEEN 1 AND 3
ORDER BY `Nome completo` ASC, `Data de início` ASC;
