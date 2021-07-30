SELECT upper(concat(e.FIRST_NAME,' ',e.LAST_NAME)) AS "Nome completo", jh.START_DATE AS "Data de início do cargo", e.SALARY AS "Salário"
FROM job_history jh
INNER JOIN employees e
ON e.EMPLOYEE_ID = jh.EMPLOYEE_ID 
WHERE month(jh.START_DATE) IN(1,2,3)
ORDER BY 1 ASC, 2 ASC;
