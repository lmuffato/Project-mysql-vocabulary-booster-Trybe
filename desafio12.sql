-- challenge 12;

SELECT CONCAT(employee.FIRST_NAME, ' ', employee.LAST_NAME) AS `Nome completo funcionário 1`,
employee.SALARY AS `Salário funcionário 1`,
employee.PHONE_NUMBER AS `Telefone funcionário 1`,
CONCAT(employees.FIRST_NAME, ' ', employees.LAST_NAME) AS `Nome completo funcionário 2`,
employees.SALARY `Salário funcionário 2`,
employees.PHONE_NUMBER AS `Telefone funcionário 2`
FROM hr.employees AS employee, hr.employees AS employees
WHERE employee.JOB_ID=employees.JOB_ID 
ORDER BY `Nome completo funcionário 1`, `Nome completo funcionário 2`
