//Program 6-: Perform   Nested Query operations
//Sailors (Sid, Sname, Rating, Age)
//Boats (Bid, Bname, Color)
//Reserves (Sid, Bid, Day)

CREATE TABLE Sailors (
    Sid INT PRIMARY KEY,
    Sname VARCHAR(50),
    Rating INT,
    Age FLOAT
);

CREATE TABLE Boats (
    Bid INT PRIMARY KEY,
    Bname VARCHAR(50),
    Color VARCHAR(20)
);

CREATE TABLE Reserves (
    Sid INT,
    Bid INT,
    Day DATE,
    PRIMARY KEY (Sid, Bid, Day),
    FOREIGN KEY (Sid) REFERENCES Sailors(Sid),
    FOREIGN KEY (Bid) REFERENCES Boats(Bid)
);

//a)	Find all information of sailors who have reserved boat number 101 or 103

SELECT *
FROM Sailors
WHERE Sid IN (
    SELECT Sid
    FROM Reserves
    WHERE Bid = 101 OR Bid = 103
);

//b)	Find names of sailors who have reserved at least one boat

SELECT Sname
FROM Sailors
WHERE Sid IN (
    SELECT Sid
    FROM Reserves
);

//c)	Find names of sailors who have reserved a red boat and list in the order of their age

SELECT Sname
FROM Sailors
WHERE Sid IN (
    SELECT R.Sid
    FROM Reserves R
    WHERE R.Bid IN (
        SELECT B.Bid
        FROM Boats B
        WHERE B.Color = 'Red'
    )
)
ORDER BY Age;

//d)	Find the ids and names of sailors who have reserved two different boats on the same day

SELECT Sid, Sname
FROM Sailors
WHERE Sid IN (
    SELECT R1.Sid
    FROM Reserves R1, Reserves R2
    WHERE R1.Sid = R2.Sid
      AND R1.Day = R2.Day
      AND R1.Bid <> R2.Bid
);

//e)	  Find the name and the age of the youngest sailor.

  SELECT Sname, Age
FROM Sailors
WHERE Age = (
    SELECT MIN(Age)
    FROM Sailors
);

//f)	Find the names of sailors who have reserved all boats.

  SELECT Sname
FROM Sailors S
WHERE NOT EXISTS (
    SELECT *
    FROM Boats B
    WHERE NOT EXISTS (
        SELECT *
        FROM Reserves R
        WHERE R.Sid = S.Sid
          AND R.Bid = B.Bid
    )
);





