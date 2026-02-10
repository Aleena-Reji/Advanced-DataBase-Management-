//Progam 2-Execute DML statements 
//Create table Employee with fields( Emp_ID, Emp_Name, DOB, Dept, Designation, Salary)

CREATE TABLE Employee (
    Emp_ID INT PRIMARY KEY,
    Emp_Name VARCHAR(50),
    DOB DATE,
    Dept VARCHAR(30),
    Designation VARCHAR(30),
    Salary INT
);

//a)	Insert values into table

INSERT INTO Employee
(Emp_ID, Emp_Name, DOB, Dept, Designation, Salary)
VALUES
(101, 'Rahul', '1998-05-15', 'IT', 'Software Engineer', 45000);

INSERT INTO Employee 
(Emp_ID, Emp_Name, DOB, Dept, Designation, Salary)
VALUES
(102, 'Anita', '1997-08-22', 'HR', 'HR Executive', 35000),
(103, 'Vijay', '1996-11-10', 'Finance', 'Accountant', 40000);

//b)	Write a basic SELECT query to retrieve all columns from a table.

SELECT * FROM Employee;
