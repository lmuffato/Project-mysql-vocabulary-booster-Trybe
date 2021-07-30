SELECT UCASE(CONCAT(FIRST_NAME, ' ', LAST_NAME)) AS 'Nome completo',
hire_date AS 'Data de início',
salary AS 'Salário'
FROM hr.employees
ORDER BY CONCAT(FIRST_NAME, ' ', LAST_NAME),hire_date;
