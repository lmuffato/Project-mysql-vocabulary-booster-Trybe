SELECT
     j.job_title AS Cargo, ROUND(AVG(e.salary), 2) AS 'Média Salarial',
	 CASE
        WHEN ROUND(AVG(e.salary), 2) >= 2000 AND ROUND(AVG(e.salary), 2) <= 5800 THEN 'Júnior'
        WHEN ROUND(AVG(e.salary), 2) >= 5801 AND ROUND(AVG(e.salary), 2) <= 7500 THEN 'Pleno'
		WHEN ROUND(AVG(e.salary), 2) >= 7501 AND ROUND(AVG(e.salary), 2) <= 10500 THEN 'Sênior'
		WHEN ROUND(AVG(e.salary), 2) > 10500 THEN 'CEO'
        ELSE ''
    END AS Senioridade
FROM jobs AS j
INNER JOIN employees AS e
ON e.job_id = j.job_id
GROUP BY j.job_title
ORDER BY ROUND(AVG(e.salary), 2) ASC, j.job_title ASC;
