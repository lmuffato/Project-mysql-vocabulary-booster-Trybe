-- Exiba os 05 primeiros países distintos dentre as pessoas consumidoras e as empresas fornecedoras, em ordem alfabética.

SELECT Country `País` FROM w3schools.customers
UNION
SELECT Country `País` FROM w3schools.suppliers
ORDER BY `País`
LIMIT 5;

-- Desafio solucionado com consulta no PR de Luan Ramalho
-- https://github.com/tryber/sd-010-a-mysql-vocabulary-booster/pull/33/commits/6c6372cfc475a8b7f7d55524718a6580c2acd7ef
