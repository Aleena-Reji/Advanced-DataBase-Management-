//Program-7 Aggregation Operators and Pattern Matching
  CREATE TABLE Sailors (
    Sid INT PRIMARY KEY,
    Sname VARCHAR(30),
    Rating INT,
    Age INT
);

INSERT INTO Sailors VALUES
(1, 'Priya', 5, 22),
(2, 'Pavani', 4, 25),
(3, 'Nayana', 3, 21),
(4, 'Navina', 4, 28),
(5, 'Riya', 5, 20),
(6, 'Arjun', 2, 32),
(7, 'Priti', 3, 24);

//a)	Find the name and the age of the youngest sailor.
SELECT Sname, Age
FROM Sailors
WHERE Age = (SELECT MIN(Age) FROM Sailors);

//b)	Find the average age of sailors for each rating level.
  SELECT Rating, AVG(Age) AS Avg_Age
FROM Sailors
GROUP BY Rating;


//
