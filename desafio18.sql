--CONSULTADO DATEFORMAT EM: https://www.w3schools.com/mysql/func_mysql_date_format.asp
SELECT
  CONCAT(e.FIRST_NAME, ' ', e.LAST_NAME) AS 'Nome completo',
  DATE_FORMAT(jh.START_DATE, "%d/%m/%Y") "Data de início",
  DATE_FORMAT(jh.END_DATE, "%d/%m/%Y") "Data de rescisão",
  ROUND(DATEDIFF(jh.END_DATE, jh.START_DATE)/365, 2)  "Anos trabalhados"
FROM hr.job_history jh
INNER JOIN hr.employees e
  ON e.EMPLOYEE_ID = jh.EMPLOYEE_ID
ORDER BY 1 ASC, 4 ASC;
