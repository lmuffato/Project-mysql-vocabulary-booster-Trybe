SELECT CONCAT(func_1.FIRST_NAME,' ', func_1.LAST_NAME) AS `Nome completo funcionário 1`,
func_1.SALARY AS `Salário funcionário 1`,
func_1.PHONE_NUMBER AS `Telefone funcionário 1`,
CONCAT(func_2.FIRST_NAME,' ', func_2.LAST_NAME)  AS `Nome completo funcionário 2`,
func_2.SALARY AS `Salário funcionário 2`,
func_2.PHONE_NUMBER AS `Telefone funcionário 2`
FROM hr.employees func_1
CROSS JOIN hr.employees func_2
WHERE func_1.JOB_ID = func_2.JOB_ID AND func_1.PHONE_NUMBER != func_2.PHONE_NUMBER
ORDER BY `Nome completo funcionário 1`, `Nome completo funcionário 2`;
