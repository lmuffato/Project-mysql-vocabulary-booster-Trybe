SELECT 
	UPPER(CONCAT(FIRST_NAME, ' ', LAST_NAME)) AS 'Nome completo',
    START_DATE AS 'Data de início',
    SALARY AS 'Salário'
FROM
    hr.job_history AS jh
        INNER JOIN
    hr.employees AS em ON jh.EMPLOYEE_ID = em.EMPLOYEE_ID
HAVING MONTH(`Data de início`) IN (01 , 02, 03)
ORDER BY `Nome completo` ASC , `Data de início` ASC;
