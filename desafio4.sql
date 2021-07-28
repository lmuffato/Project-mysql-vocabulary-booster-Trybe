SELECT j.JOB_TITLE AS Cargo, ROUND(AVG(e.salary),2) AS 'Média salarial', CASE 
WHEN AVG(e.salary) BETWEEN 2000 AND 5800 THEN 'Júnior'
WHEN AVG(e.salary) BETWEEN 5801 AND 7500 THEN 'Pleno'
WHEN AVG(e.salary) BETWEEN 7501 AND 10500 THEN 'Sênior'
WHEN AVG(e.salary) > 10500 THEN 'CEO'
END AS Senioridade
FROM hr.jobs AS j
INNER JOIN employees AS e
ON e.JOB_ID=j.JOB_ID
GROUP BY e.JOB_ID
HAVING (AVG(e.salary) > 0)
ORDER BY (AVG(e.salary)), j.JOB_TITLE
;
