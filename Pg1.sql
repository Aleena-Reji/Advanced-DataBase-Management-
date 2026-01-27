//Program 1-Execute DDL statements
//a) Create a table Student with fields (Roll No, Name, Course, Year)

CREATE TABLE Student (
    Roll_No INT PRIMARY KEY,
    Name VARCHAR(50),
    Course VARCHAR(30),
    Year INT
);

//b) Alter table

ALTER TABLE Student
ADD Age INT;

ALTER TABLE Student
MODIFY Name VARCHAR(100);

ALTER TABLE Student
DROP Age;

//c) Truncate table

TRUNCATE TABLE Student;

//d) Drop table

DROP TABLE Student;

