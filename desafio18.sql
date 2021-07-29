SELECT 
CONCAT(e.FIRST_NAME, ' ', e.LAST_NAME) AS 'Nome completo',
DATE_FORMAT(jh.START_DATE, '%d/%m/%Y') AS 'Data de início',
DATE_FORMAT(jh.END_DATE, '%d/%m/%Y') AS 'Data de rescisão',
ROUND(DATEDIFF(jh.END_DATE, jh.START_DATE) / 365, 2) AS 'Anos trabalhados'
FROM job_history AS jh
INNER JOIN employees AS e ON e.EMPLOYEE_ID = jh.EMPLOYEE_ID
ORDER BY `Nome completo` , `Anos trabalhados` ASC;
/*Usei o código que olega Ivan Rafael usou para formatar as datas*/
