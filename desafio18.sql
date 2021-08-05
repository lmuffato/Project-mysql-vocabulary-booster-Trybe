SELECT CONCAT(e.first_name, + ' ', + e.last_name) AS "Nome completo",
date_format(jb.start_date, '%d/%m/%Y') AS "Data de início",
date_format(jb.end_date, '%d/%m/%Y') AS "Data de rescisão",
ROUND(DATEDIFF(jb.end_date, jb.start_date)/365, 2) AS "Anos trabalhados"
FROM employees AS e
INNER JOIN job_history AS jb
ON jb.employee_id = e.employee_id
ORDER BY `Nome Completo` ASC, `Anos trabalhados` ASC;
-- FONTE
-- https://blog.tiagopassos.com/2010/03/17/formatar-datas-usando-o-date_format-do-mysql/
