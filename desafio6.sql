SELECT
    CONCAT
        (
          first_name,
          ' ',
          last_name
        )
    'Nome Completo',
    j.job_title Cargo,
    jh.start_date 'Data de início do cargo',
    d.department_name Departamento
FROM
    hr.employees e
INNER JOIN
    hr.job_history jh
ON
    e.employee_id = jh.employee_id
INNER JOIN
    hr.jobs j
ON
    jh.job_id = j.job_id
INNER JOIN
    hr.departments d
ON
    jh.department_id = d.department_id
ORDER BY
    1 DESC, 2;
