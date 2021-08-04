SELECT UCASE(
    CONCAT(Employees.FIRST_NAME, ' ', Employees.LAST_NAME)
  ) AS 'Nome completo',
  History.START_DATE AS 'Data de início',
  Employees.SALARY AS 'Salário'
FROM hr.employees AS Employees
  INNER JOIN hr.job_history AS History ON Employees.EMPLOYEE_ID = History.EMPLOYEE_ID
WHERE MONTH(History.START_DATE) BETWEEN 1 AND 3
ORDER BY UCASE(
    CONCAT(Employees.FIRST_NAME, ' ', Employees.LAST_NAME)
  ),
  History.START_DATE ASC;
