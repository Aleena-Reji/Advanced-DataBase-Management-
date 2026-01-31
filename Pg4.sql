//Program 4-Execute DDL statements with Key constraints.
//Create table Department (Department Id, Dept Name, Head of Department)
//Create table Employee (Employee Id, Name, Department Id, salary) 
//a)	 Domain Constraints

CREATE TABLE Department (
    Department_ID INT NOT NULL,
    Dept_Name VARCHAR(50) NOT NULL,
    Head_of_Department VARCHAR(50)
);

CREATE TABLE Employee (
    Employee_ID INT NOT NULL,
    Name VARCHAR(50) NOT NULL,
    Department_ID INT,
    Salary DECIMAL(10,2) CHECK (Salary > 0)
);

//b)	 Entity Integrity Constraint

ALTER TABLE Department
ADD CONSTRAINT PK_Department PRIMARY KEY (Department_ID);

ALTER TABLE Employee
ADD CONSTRAINT PK_Employee PRIMARY KEY (Employee_ID);

//c)	 Unique Key Constraints

ALTER TABLE Department
ADD CONSTRAINT UQ_Dept_Name UNIQUE (Dept_Name);

//d)	Referential Integrity Constraint 

ALTER TABLE Employee
ADD CONSTRAINT FK_Employee_Department
FOREIGN KEY (Department_ID)
REFERENCES Department (Department_ID);




