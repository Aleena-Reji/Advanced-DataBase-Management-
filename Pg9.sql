//Program 9:  Execution of Transaction Control Languages (Commit, Rollback, Savepoint)
  CREATE TABLE Accounts (
    Acc_No INT PRIMARY KEY,
    Name VARCHAR(30),
    Balance INT
);

//a)	Insert three values and apply commit command. (Retrieve data) 
  INSERT INTO Accounts VALUES (101, 'Anu', 5000);
INSERT INTO Accounts VALUES (102, 'Ravi', 7000);
INSERT INTO Accounts VALUES (103, 'Meena', 6000);

COMMIT;

//b)	Give savepoint 1 and insert two values. (Retrieve data)
  SAVEPOINT S1;

INSERT INTO Accounts VALUES (104, 'John', 8000);
INSERT INTO Accounts VALUES (105, 'Sara', 9000);
SELECT * FROM Accounts;

//c)	Apply rollback. (Retrieve data)
  ROLLBACK;
SELECT * FROM Accounts;

//d)	Insert three values followed by commit command. (Retrieve data)
  INSERT INTO Accounts VALUES (106, 'Kiran', 6500);
INSERT INTO Accounts VALUES (107, 'Neha', 7200);
INSERT INTO Accounts VALUES (108, 'Amit', 8100);

COMMIT;
SELECT * FROM Accounts;

//e)	Give savepoint 2 then insert four values and rollback to savepoint 2.
(Retrieve data)
SAVEPOINT S2;

INSERT INTO Accounts VALUES (109, 'Rahul', 9000);
INSERT INTO Accounts VALUES (110, 'Divya', 8800);
INSERT INTO Accounts VALUES (111, 'Suman', 7700);
INSERT INTO Accounts VALUES (112, 'Vikas', 6600);

ROLLBACK TO S2;
SELECT * FROM Accounts;

