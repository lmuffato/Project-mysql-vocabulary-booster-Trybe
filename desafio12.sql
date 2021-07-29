-- 12 - Faça um relatório que lista todas as pessoas funcionárias que possuem o mesmo cargo
SELECT * FROM hr.employees;

-- SELECT
--   ContactName AS `Nome`,
--   Country AS `País`,
--   (
--     SELECT 
--       COUNT(*) - 1
--     FROM hr.employees
--     WHERE c.Country = Country
--   ) AS `Número de compatriotas`
-- FROM hr.employees AS c
-- HAVING `Número de compatriotas` >= 1
-- ORDER BY `Nome` ASC;

-- SELECT
--   COUNT(JOB_ID),
--   JOB_ID
-- FROM hr.employees
-- GROUP BY JOB_ID
-- HAVING COUNT(JOB_ID) > 1;
