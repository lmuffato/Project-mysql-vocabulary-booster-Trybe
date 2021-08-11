-- challenge 12;
-- https://github.com/tryber/sd-010-a-mysql-vocabulary-booster/pull/85/commits/8f586a6f4111f872f9b9f66a3485160be08d8ef9

SELECT CONCAT(employee.FIRST_NAME, ' ', employee.LAST_NAME) AS `Nome completo funcionário 1`,
employee.SALARY AS `Salário funcionário 1`,
employee.PHONE_NUMBER AS `Telefone funcionário 1`,
CONCAT(employees.FIRST_NAME, ' ', employees.LAST_NAME) AS `Nome completo funcionário 2`,
employees.SALARY `Salário funcionário 2`,
employees.PHONE_NUMBER AS `Telefone funcionário 2`
FROM hr.employees AS employee, hr.employees AS employees
WHERE employee.JOB_ID=employees.JOB_ID AND employee.EMPLOYEE_ID<>employees.EMPLOYEE_ID
ORDER BY `Nome completo funcionário 1`, `Nome completo funcionário 2`
