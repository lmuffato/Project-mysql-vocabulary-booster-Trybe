SELECT
  (SELECT UCASE(CONCAT(FIRST_NAME, ' ', LAST_NAME)) 
    FROM hr.employees AS E
    WHERE E.EMPLOYEE_ID = H.EMPLOYEE_ID) AS 'Nome completo',
  START_DATE AS 'Data de início',
  (SELECT SALARY
    FROM hr.employees AS E
    WHERE E.EMPLOYEE_ID = H.EMPLOYEE_ID) AS 'Salário'
FROM hr.job_history AS H
WHERE MONTH(START_DATE) IN (1, 2, 3)
ORDER BY `Nome completo` ASC, `Data de início` ASC;
