select concat(e.FIRST_NAME, ' ', e.LAST_NAME) "Nome completo",
  date_format(j.START_DATE, "%d/%m/%Y") "Data de início",
  date_format(j.END_DATE , "%d/%m/%Y") "Data de rescisão",
  round(datediff(j.END_DATE, j.START_DATE)/365, 2) "Anos trabalhados"
from hr.employees e
join hr.job_history j on e.EMPLOYEE_ID = j.EMPLOYEE_ID
order by `Nome completo`, `Anos trabalhados`;
/*para calcular o ano certo utilizei esse video https://www.youtube.com/watch?v=Ms8MFNrl3pw */
