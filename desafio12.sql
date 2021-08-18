select concat(F1.FIRST_NAME, ' ', F1.LAST_NAME) 'Nome completo funcionário 1',
F1.SALARY "Salário funcionário 1",
  F1.PHONE_NUMBER "Telefone funcionário 1",
  concat(F2.FIRST_NAME, ' ', F2.LAST_NAME) 'Nome completo funcionário 2',
  F2.SALARY "Salário funcionário 2",
  F2.PHONE_NUMBER "Telefone funcionário 2"
from hr.employees F1, hr.employees F2
where F1.JOB_ID = F2.JOB_ID
and F1.EMPLOYEE_ID <> F2.EMPLOYEE_ID
order by `Nome completo funcionário 1`, `Nome completo funcionário 2`;
