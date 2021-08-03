SELECT CONCAT(UCASE(first_name), ' ', UCASE(last_name)) AS 'Nome completo', hire_date AS 'Data de início do cargo', salary AS Salário FROM hr.employees
WHERE hire_date BETWEEN '1987-01-01' AND '1987-03-31'
ORDER BY `Nome completo`, `Data de início do cargo`;
