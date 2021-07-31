SELECT c.ContactName AS "Nome", c.Country AS "País", (SELECT COUNT(ct.Country) - 1 FROM customers ct
    WHERE ct.Country = c.Country ) AS "Número de compatriotas" FROM customers c
	WHERE c.Country <> 'Norway' AND c.Country <> 'Ireland' AND c.Country <> 'Poland'
ORDER BY 1 ASC;
