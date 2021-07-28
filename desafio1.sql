-- Exiba os países e indicando se cada um deles se encontra ou não na região formada pela Europa
-- Crie uma query que mostre se o país pertence ou não à região "Europe".
-- Use o banco hr como referência
-- Seu relatório deve apresentar 02 colunas:
-- A primeira deve possuir o alias "País" e exibir o nome do país.
-- A segunda deve possuir o alias "Status Inclusão" e deve exibir "incluído" se o país em questão está incluso em "Europe", ou "não incluído", caso contrário.
-- Os resultados devem estar ordenados pelo nome do país em ordem alfabética.

SELECT country_name AS 'País',
IF(region_id = 1, 'incluído', 'não incluído') AS 'Status Inclusão'
FROM hr.countries
ORDER BY País;
