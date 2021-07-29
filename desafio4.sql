SELECT 
j.JOB_TITLE AS 'Cargo',
round(AVG(e.SALARY),2) AS 'Média salarial',
CASE
	WHEN round(AVG(e.SALARY),2)>=2000 AND round(AVG(e.SALARY),2)<=5800 THEN 'Júnior'
	WHEN round(AVG(e.SALARY),2)>=5801 AND round(AVG(e.SALARY),2)<=7500 THEN 'Pleno'
	WHEN round(AVG(e.SALARY),2)>=7501 AND round(AVG(e.SALARY),2)<=10500 THEN 'Sênior'
	WHEN round(AVG(e.SALARY),2)>10500 THEN 'CEO'
END AS 'Senioridade'
FROM hr.jobs AS j
INNER JOIN hr.employees AS e
ON e.JOB_ID = j.JOB_ID
GROUP BY e.JOB_ID
ORDER BY AVG(e.SALARY) ASC, j.JOB_TITLE ASC;

-- uso group by para pode usar o avg sem que ele transformes todas as linhas em um unico resultado
-- função para arredondar valores https://showdelphi.com.br/funcoes-de-arredondamento-no-mysql/
