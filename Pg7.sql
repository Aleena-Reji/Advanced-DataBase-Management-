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

//c)	Count the number of different sailor names.
  SELECT COUNT(DISTINCT Sname) AS Total_Names
FROM Sailors;

//d)	Find the average, minimum and maximum rating.
  SELECT 
    AVG(Rating) AS Avg_Rating,
    MIN(Rating) AS Min_Rating,
    MAX(Rating) AS Max_Rating
FROM Sailors;

//e)	Find name starts with 'P’ and ends with 'i’.
  SELECT Sname
FROM Sailors
WHERE Sname LIKE 'P%i';

//f)	Find substring 'ya' in name.
  SELECT Sname
FROM Sailors
WHERE Sname LIKE '%ya%';

//g)	Find Age contains 2.
SELECT Sname, Age
FROM Sailors
WHERE Age LIKE '%2%';

//h)	Find names that start with "Na", end with "na", and have exactly two characters in between.
  SELECT Sname
FROM Sailors
WHERE Sname LIKE 'Na__na';

//i)	Find name where name is not like 'Priya'.
  SELECT Sname
FROM Sailors
WHERE Sname NOT LIKE 'Priya';

  
  
