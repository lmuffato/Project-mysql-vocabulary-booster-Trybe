USE w3schools;
DELIMITER $ $ CREATE TRIGGER insert_order BEFORE
INSERT
  ON `orders` FOR EACH ROW BEGIN
SET
  NEW.OrderDate = NOW();
END $ $ DELIMITER;
INSERT INTO
  w3schools.orders(CustomerID, EmployeeID, ShipperID)
VALUES(4, 2, 2);
SELECT
  *
FROM
  w3schools.orders
WHERE
  CustomerID = 4;
