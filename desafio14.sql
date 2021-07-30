SELECT 
  c.Country AS País
FROM 
  customers AS c
INNER JOIN
  orders AS o ON c.CustomerID = o.CustomerID
UNION 
  (
    SELECT
      Country
    FROM 
      suppliers
  )
ORDER BY
  País
LIMIT 
  5;
