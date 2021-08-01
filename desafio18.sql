SELECT CONCAT(E.FIRST_NAME, ' ', E.LAST_NAME) AS `Nome completo`,
DATE_FORMAT(JH.START_DATE, '%d/%m/%Y') AS `Data de início`,
DATE_FORMAT(JH.END_DATE, '%d/%m/%Y') AS `Data de rescisão`,
ROUND(DATEDIFF(JH.END_DATE, JH.START_DATE)/365, 2) AS `Anos trabalhados`
FROM hr.job_history AS JH
INNER JOIN hr.employees AS E
ON JH.EMPLOYEE_ID=E.EMPLOYEE_ID
ORDER BY `Nome completo`, `Anos trabalhados`;

-- Créditos: Função DATE_FORMAT consultada na doc do W3SCHOOLS
-- LINK: https://www.w3schools.com/mysql/func_mysql_date_format.asp
