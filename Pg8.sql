//Program 8:  Execution of Set Operations (Union, Intersect and Except)
//Savings_Transactions (Customer_ID, Name, TransactionAmount)
//CreditCard_Transactions (Customer_ID, Name, TransactionAmount)
  
CREATE TABLE Savings_Transactions (
    Customer_ID INT,
    Name VARCHAR(30),
    TransactionAmount INT
);

CREATE TABLE CreditCard_Transactions (
    Customer_ID INT,
    Name VARCHAR(30),
    TransactionAmount INT
);

INSERT INTO Savings_Transactions VALUES
(1, 'Anu', 5000),
(2, 'Ravi', 3000),
(3, 'Meena', 7000),
(4, 'John', 2000);

INSERT INTO CreditCard_Transactions VALUES
(3, 'Meena', 4000),
(4, 'John', 6000),
(5, 'Sara', 3500);

//a)	Find all unique customers who have made either a savings or credit card transaction.
  SELECT Customer_ID, Name FROM Savings_Transactions UNION SELECT Customer_ID, Name FROM CreditCard_Transactions;

//b)	Find customers who have made both savings and credit card transactions.
  SELECT Customer_ID, Name FROM Savings_Transactions INTERSECT SELECT Customer_ID, Name FROM CreditCard_Transactions;

//c)	Find customers who have made a savings transaction but NOT a credit card transaction.
  SELECT Customer_ID, Name FROM Savings_Transactions MINUS SELECT Customer_ID, Name FROM CreditCard_Transactions;



