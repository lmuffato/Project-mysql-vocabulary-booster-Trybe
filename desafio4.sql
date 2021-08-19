SELECT
	j.JOB_TITLE 'Cargo',
	ROUND(AVG(e.SALARY), 2) 'Média salarial',
	CASE 
		WHEN ROUND(AVG(e.SALARY), 2) BETWEEN 2000 AND 5800 THEN 'Júnior'
		WHEN ROUND(AVG(e.SALARY), 2) BETWEEN 5801 AND 7500 THEN 'Pleno'
		WHEN ROUND(AVG(e.SALARY), 2) BETWEEN 7501 AND 10500 THEN 'Sênior'
		WHEN ROUND(AVG(e.SALARY), 2) > 10500 THEN 'CEO'
	END 'Senioridade'
FROM hr.jobs j
	INNER JOIN hr.employees e
	ON j.JOB_ID = e.JOB_ID 
GROUP BY Cargo
ORDER BY AVG(e.SALARY), Cargo;
