SELECT CONCAT(e.FIRST_NAME, ' ', e.LAST_NAME) AS 'Nome completo',
DATE_FORMAT(START_DATE, '%d/%m/%Y') AS 'Data de início',
DATE_FORMAT(END_DATE, '%d/%m/%Y') AS 'Data de rescisão',
ROUND((YEAR(END_DATE) + MONTH(END_DATE)/12 + DAY(END_DATE)/365 )- (YEAR(START_DATE) + MONTH(START_DATE)/12 + DAY(START_DATE)/365 ),2) AS 'Anos trabalhados'
FROM hr.job_history AS h
INNER JOIN hr.employees AS e ON h.EMPLOYEE_ID = e.EMPLOYEE_ID
ORDER BY 'Nome completo', 'Anos trabalhados';
