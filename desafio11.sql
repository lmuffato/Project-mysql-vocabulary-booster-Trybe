SELECT c.ContactName AS "Nome", c.Country AS "País", (SELECT COUNT(ct.Country) - 1 FROM customers ct
    WHERE ct.Country = c.Country) AS "Número de compatriotas" FROM customers c
GROUP BY c.ContactName
ORDER BY 1 ASC;
