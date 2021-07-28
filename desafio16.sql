DELIMITER $$
CREATE FUNCTION buscar_quantidade_de_empregos_por_funcionario(email VARCHAR(25))
RETURNS DOUBLE READS SQL DATA
BEGIN
DECLARE qty DOUBLE;
SELECT COUNT(j.employee_id) FROM hr.job_history AS j
INNER JOIN hr.employees AS e
WHERE e.employee_id = j.employeed_id AND e.email LIKE CONCAT('%', email, '%')
INTO qty;
RETURN qty;
END $$
DELIMITER ;
