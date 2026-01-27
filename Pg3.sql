//Program 3-: Execute DML statements 
//Create table Product with fields( ProductID, Name, Category, Manufacturing date,Quantity, Price)

CREATE TABLE Product (
    ProductID INT PRIMARY KEY,
    Name VARCHAR(50),
    Category VARCHAR(30),
    Manufacturing_Date DATE,
    Quantity INT,
    Price FLOAT
);

INSERT INTO Product 
(ProductID, Name, Category, Manufacturing_Date, Quantity, Price)
VALUES
(1, 'Laptop', 'Electronics', '2024-01-10', 20, 55000),
(2, 'Mobile', 'Electronics', '2024-02-15', 50, 25000),
(3, 'Chair', 'Furniture', '2023-12-20', 30, 4500),
(4, 'Table', 'Furniture', '2023-11-05', 15, 8000);

//a)	Select specific columns from a table.

SELECT Name, Category, Price
FROM Product;

//b)	Rename a column in the result set.

SELECT Name AS Product_Name, Price AS Product_Price
FROM Product;

//c)	Delete a record

DELETE FROM Product
WHERE ProductID = 4;

//d)	Perform Order by

SELECT * FROM Product
ORDER BY Price;

//e)	Perform Group by

SELECT Category, SUM(Quantity) AS Total_Quantity
FROM Product
GROUP BY Category;

