SELECT 
    CONCAT(func1.FIRST_NAME, ' ', func1.LAST_NAME) AS 'Nome completo funcinário 1',
    func1.SALARY AS 'Salário funcionário 1',
    func1.PHONE_NUMBER AS 'Telefone funcionario 1',
    CONCAT(func2.FIRST_NAME, ' ', func2.LAST_NAME) AS 'Nome completo funcinário 2',
    func2.SALARY AS 'Salário funcionário 2',
    func2.PHONE_NUMBER AS 'Telefone funcionario 2'
FROM
    hr.employees AS func1,
    hr.employees AS func2
WHERE
    func1.EMPLOYEE_ID <> func2.EMPLOYEE_ID
        AND func1.JOB_ID = func2.JOB_ID
ORDER BY `Nome completo funcinário 1` , `Nome completo funcinário 2`;
