SELECT
    CONCAT(employees.FIRST_NAME,
    ' ',
    employees.LAST_NAME) AS 'Nome completo',
    jobs.JOB_TITLE AS 'Cargo',
    job_history.START_DATE AS 'Data de início do cargo',
    departments.DEPARTMENT_NAME AS 'Departamento' 
FROM
    hr.job_history as job_history 
INNER JOIN
    hr.employees AS employees 
        ON employees.EMPLOYEE_ID = job_history.EMPLOYEE_ID 
INNER JOIN
    hr.jobs AS jobs 
        ON job_history.JOB_ID = jobs.JOB_ID 
INNER JOIN
    hr.departments AS departments 
        ON job_history.DEPARTMENT_ID = departments.DEPARTMENT_ID 
ORDER BY
    CONCAT(employees.FIRST_NAME,
    ' ',
    employees.LAST_NAME) DESC,
    jobs.JOB_TITLE;
