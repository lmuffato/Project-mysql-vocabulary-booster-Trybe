USE hr;
DELIMITER $ $;
CREATE FUNCTION buscar_quantidade_de_empregos_por_funcionario(email VARCHAR(50)) RETURNS INT READS SQL DATA BEGIN
DECLARE qtd_jobs INT;
SELECT COUNT(*)
FROM hr.job_history AS jobHistory
  INNER JOIN hr.employees AS employees ON jobHistory.EMPLOYEE_ID = employees.EMPLOYEE_ID
WHERE employees.EMAIL LIKE email INTO qtd_jobs;
RETURN qtd_jobs;
END;
$ $ DELIMITER;
