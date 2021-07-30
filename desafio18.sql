SELECT 
    CONCAT(e.FIRST_NAME, ' ', e.LAST_NAME) AS 'Nome completo',
    CASE
        WHEN
            LENGTH(DAY(h.START_DATE)) = 1
                AND LENGTH(MONTH(h.START_DATE)) = 1
        THEN
            CONCAT(0,
                    DAY(h.START_DATE),
                    '/',
                    0,
                    MONTH(h.START_DATE),
                    '/',
                    YEAR(h.START_DATE))
        WHEN
            LENGTH(MONTH(h.START_DATE)) = 2
        THEN
            CONCAT(DAY(h.START_DATE),
                    '/',
                    MONTH(h.START_DATE),
                    '/',
                    YEAR(h.START_DATE))
        ELSE CONCAT(DAY(h.START_DATE),
                '/',
                0,
                MONTH(h.START_DATE),
                '/',
                YEAR(h.START_DATE))
    END AS 'Data de início',
    CASE
        WHEN
            LENGTH(MONTH(h.END_DATE)) = 2
                AND LENGTH(DAY(h.END_DATE)) = 1
        THEN
            CONCAT(0,
                    DAY(h.END_DATE),
                    '/',
                    MONTH(h.END_DATE),
                    '/',
                    YEAR(h.END_DATE))
        WHEN
            LENGTH(MONTH(h.END_DATE)) = 2
        THEN
            CONCAT(DAY(h.END_DATE),
                    '/',
                    MONTH(h.END_DATE),
                    '/',
                    YEAR(h.END_DATE))
        ELSE CONCAT(DAY(h.END_DATE),
                '/',
                0,
                MONTH(h.END_DATE),
                '/',
                YEAR(h.END_DATE))
    END AS 'Data de rescisão',
    ROUND(DATEDIFF(h.END_DATE, h.START_DATE) / 365,
            2) AS 'Anos trabalhados'
FROM
    hr.employees AS e
        INNER JOIN
    hr.job_history AS h ON e.EMPLOYEE_ID = h.EMPLOYEE_ID
ORDER BY 1 , 4;
