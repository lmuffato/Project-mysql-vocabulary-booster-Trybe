SELECT
    CONCAT
    (
      UCASE(first_name),
      ' ',
      UCASE(last_name)
    )
    'Nome completo',
    jh.start_date 'Data de início',
    e.salary Salário
FROM
    hr.employees e
INNER JOIN
    hr.job_history jh
USING
    (employee_id)
WHERE
    MONTH(jh.start_date) in (01,02,03)
ORDER BY
    1, 2;
