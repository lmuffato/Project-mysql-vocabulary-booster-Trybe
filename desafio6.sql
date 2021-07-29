SELECT
CONCAT(UCASE(e.FIRST_NAME),' ',UCASE(e.LAST_NAME)) AS 'Nome completo',
j.JOB_TITLE AS 'Cargo',
jh.START_DATE AS 'Data de início',
d.DEPARTMENT_NAME AS 'Departamento'
FROM hr.employees AS e
INNER JOIN hr.jobs AS j
ON j.JOB_ID = e.JOB_ID
INNER JOIN hr.job_history AS jh
ON jh.EMPLOYEE_ID = e.EMPLOYEE_ID
INNER JOIN hr.departments AS d
ON d.DEPARTMENT_ID = jh.DEPARTMENT_ID
WHERE MONTH(jh.START_DATE) BETWEEN 1 AND 3
ORDER BY CONCAT(UCASE(e.FIRST_NAME),' ',UCASE(e.LAST_NAME)) ASC, jh.START_DATE ASC;

-- faço inner join com três tabelas diferentes e faço o link entre elas cada uma de uma vez que
