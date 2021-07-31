SELECT CONCAT(F1.FIRST_NAME, ' ', F1.LAST_NAME) AS `Nome completo funcionário 1`,
F1.SALARY AS `Salário funcionário 1`,
F1.PHONE_NUMBER AS `Telefone funcionário 1`,
CONCAT(F2.FIRST_NAME, ' ', F2.LAST_NAME) AS `Nome completo funcionário 2`,
F2.SALARY AS `Salário funcionário 2`,
F2.PHONE_NUMBER AS `Telefone funcionário 2`
FROM hr.employees AS F1, hr.employees AS F2
WHERE F1.JOB_ID = F2.JOB_ID
AND F1.EMPLOYEE_ID <> F2.EMPLOYEE_ID
ORDER BY `Nome completo funcionário 1`, `Nome completo funcionário 2`
