-- 6 - Faça um relatório que mostra o histórico de cargos das pessoas empregadas
SELECT 
    CONCAT(e.FIRST_NAME, ' ', e.LAST_NAME) 'Nome completo',
    j.JOB_TITLE Cargo,
    jh.START_DATE 'Data de início do cargo',
    d.DEPARTMENT_NAME Departamento
FROM
    hr.job_history jh
        JOIN
    hr.employees e ON e.EMPLOYEE_ID = jh.EMPLOYEE_ID
        JOIN
    hr.jobs j ON jh.JOB_ID = j.JOB_ID
        JOIN
    hr.departments d ON jh.DEPARTMENT_ID = d.DEPARTMENT_ID
ORDER BY `Nome Completo` DESC , Cargo;
