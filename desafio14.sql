# 14 - Considerando o conjunto formado pelas pessoas consumidoras e empresas fornecedoras de produtos, queremos saber quais são os cinco primeiros países distintos, em ordem alfabética, presentes nesse conjunto
SELECT
    c.Country AS País
FROM
    w3schools.customers c 
UNION SELECT 
    s.Country AS País
FROM
    w3schools.suppliers s
GROUP BY País
ORDER BY País
LIMIT 5;
