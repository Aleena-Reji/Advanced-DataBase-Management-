//Program 5-Execute DML statements using SQL Join operations.
//Table categories (CategoryID, CategoryName, Description)

CREATE TABLE Categories (
    CategoryID INT PRIMARY KEY,
    CategoryName VARCHAR(30),
    Description VARCHAR(50)
);

//Table Products (ProductID, ProductName, CategoryID, Price)

CREATE TABLE Products (
    ProductID INT PRIMARY KEY,
    ProductName VARCHAR(30),
    CategoryID INT,
    Price DECIMAL(10,2),
    FOREIGN KEY (CategoryID) REFERENCES Categories(CategoryID)
);

INSERT INTO Categories VALUES
(1, 'Electronics', 'Electronic items'),
(2, 'Clothing', 'Apparel items'),
(3, 'Furniture', 'Home furniture');

INSERT INTO Products VALUES
(101, 'Laptop', 1, 55000),
(102, 'Mobile', 1, 25000),
(103, 'Shirt', 2, 1500),
(104, 'Table', 3, 8000);

//a)	Inner Join (Sort based on price)

SELECT P.ProductName, C.CategoryName, P.Price
FROM Products P
INNER JOIN Categories C
ON P.CategoryID = C.CategoryID
ORDER BY P.Price;

//b)	Left Join (Product Name=Laptop)

SELECT P.ProductName, C.CategoryName, P.Price
FROM Products P
LEFT JOIN Categories C
ON P.CategoryID = C.CategoryID
WHERE P.ProductName = 'Laptop';

//c)	Right Join (Category Name=Clothing)

SELECT P.ProductName, C.CategoryName, P.Price
FROM Products P
RIGHT JOIN Categories C
ON P.CategoryID = C.CategoryID
WHERE C.CategoryName = 'Clothing';

//d)	Full Join (Min Price)

SELECT P.ProductName, C.CategoryName, P.Price
FROM Products P
FULL OUTER JOIN Categories C
ON P.CategoryID = C.CategoryID
WHERE P.Price = (
    SELECT MIN(Price) FROM Products
);

//e)	Natural Join (Max Price)

SELECT ProductName, CategoryName, Price
FROM Products
NATURAL JOIN Categories
WHERE Price = (
    SELECT MAX(Price) FROM Products
);

