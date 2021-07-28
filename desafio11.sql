SELECT
  ContactName AS 'Nome',
  Country AS 'País',
  (SELECT
    COUNT(*)
  FROM
    w3schools.customers t1
      WHERE
        t1.ContactName <> t2.ContactName
          AND t1.Country = t2.Country) AS 'Número de compatriotas'
FROM
  w3schools.customers t2
HAVING `Número de compatriotas` > 0
ORDER BY 1;
