Question1
SELECT
  OrderID,
  CustomerName,
  LTRIM(RTRIM(value)) AS Product
FROM
  ProductDetail
CROSS APPLY
  STRING_SPLIT(Products, ',');

Question2
CREATE TABLE Orders (
  OrderID INT PRIMARY KEY,
  CustomerName VARCHAR(100)
);
CREATE TABLE OrderDetails (
  OrderID INT,
  Product VARCHAR(100),
  Quantity INT,
  PRIMARY KEY (OrderID, Product),
  FOREIGN KEY (OrderID) REFERENCES Orders(OrderID)
);
