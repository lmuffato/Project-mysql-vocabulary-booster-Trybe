SELECT cn.ContactName AS 'Nome',
  cn.Country AS 'País',
  COUNT(ctmrs.Country) - 1 AS 'Número de compatriotas'
FROM w3schools.customers AS cn, w3schools.customers AS ctmrs
  WHERE cn.Country = ctmrs.Country
    GROUP BY cn.ContactName,cn.Country
  HAVING `Número de compatriotas` > 0
ORDER BY cn.ContactName;
