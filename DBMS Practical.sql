CREATE TABLE Course ( 
    DeptNo NUMBER(2) PRIMARY KEY, 
    Dname VARCHAR2(20), 
    Location VARCHAR2(10) 
);

CREATE TABLE Student ( 
    StudentId NUMBER(4) PRIMARY KEY, 
    Student_name VARCHAR2(40) NOT NULL, 
    Address1 VARCHAR2(300), 
    Gender VARCHAR2(15), 
    Course VARCHAR2(8), 
    Deptno NUMBER(2), 
    CONSTRAINT fk_dept FOREIGN KEY (Deptno) REFERENCES Course(DeptNo) 
);

INSERT INTO Course VALUES (10, 'Computer Science', 'New York');

INSERT INTO Course VALUES (20, 'Mechanical', 'India');

INSERT INTO Course VALUES (30, 'Electrical', 'Chicago');

INSERT INTO Course VALUES (40, 'Civil Engineering', 'Miami');

INSERT INTO Course VALUES (50, 'MCA', 'Houston');

INSERT INTO Student  
VALUES (7369, 'John Doe', '123 Elm St', 'Male', 'BCA', 10);

INSERT INTO Student  
VALUES (7777, 'Jane Smith', '456 Oak St', 'Female', 'MCA', 50);

INSERT INTO Student  
VALUES (0927, 'Samantha Brown', '789 Pine St', 'Female', 'BCA', 10);

INSERT INTO Student  
VALUES (2365, 'Michael Green', '321 Maple St', 'Male', 'MCA', 50);

INSERT INTO Student  
VALUES (2233, 'Steve Harris', '654 Cedar St', 'Male', 'BCA', 20);

SELECT * FROM Student;

SELECT Dname, Location FROM Course;

SELECT StudentId, Course FROM Student;

SELECT Dname, Location FROM Course;

SELECT * FROM Student WHERE Course = 'MCA';

SELECT Student_name  
FROM Student  
WHERE StudentId IN (7369, 7777, 2233);

SELECT Student_name  
FROM Student  
WHERE Deptno NOT IN (10, 40);

SELECT Student_name  
FROM Student  
WHERE Deptno NOT IN (10, 40);

SELECT Student_name  
FROM Student  
WHERE Student_name LIKE 'S%' AND Student_name NOT LIKE 's%';

SELECT Student_name  
FROM Student  
WHERE Student_name LIKE '_k%';

SELECT *  
FROM Student  
WHERE Deptno IS NULL;

SELECT *  
FROM Student  
ORDER BY Course ASC;

SELECT COUNT(*)  
FROM Student  
WHERE Course = 'BCA';

SELECT COUNT(*)  
FROM Student;

SELECT *  
FROM Student  
WHERE Deptno IN (1, 2);

SELECT *  
FROM Student  
ORDER BY Course;

SELECT *  
FROM Student  
ORDER BY Student_name ASC;

Ques2-

CREATE TABLE CUSTOMER ( 
    CustID INT PRIMARY KEY, 
    Last_Name VARCHAR(50), 
    First_Name VARCHAR(50) 
);

CREATE TABLE ORDERS ( 
    Order_ID INT PRIMARY KEY, 
    Order_Date DATE, 
    Customer_SID INT, 
    Amount DECIMAL(10, 2) CHECK (Amount > 20000), 
    FOREIGN KEY (Customer_SID) REFERENCES CUSTOMER(CustID) 
);

INSERT INTO CUSTOMER (CustID, Last_Name, First_Name) VALUES (1, 'Jones', 'Alice');

INSERT INTO CUSTOMER (CustID, Last_Name, First_Name) VALUES (2, 'Williams', 'John');

INSERT INTO CUSTOMER (CustID, Last_Name, First_Name) VALUES (3, 'Davis', 'Chris');

INSERT INTO CUSTOMER (CustID, Last_Name, First_Name) VALUES (4, 'Smith', 'Eve');

INSERT INTO CUSTOMER (CustID, Last_Name, First_Name) VALUES (5, 'Andrews', 'Paul');

INSERT INTO ORDERS (Order_ID, Order_Date, Customer_SID, Amount) VALUES (101, TO_DATE('2024-01-10', 'YYYY-MM-DD'), 1, 25000);

INSERT INTO ORDERS (Order_ID, Order_Date, Customer_SID, Amount) VALUES (102, TO_DATE('2024-01-15', 'YYYY-MM-DD'), 2, 22000);

INSERT INTO ORDERS (Order_ID, Order_Date, Customer_SID, Amount) VALUES (103, TO_DATE('2024-02-20', 'YYYY-MM-DD'), 3, 29000);

INSERT INTO ORDERS (Order_ID, Order_Date, Customer_SID, Amount) VALUES (104, TO_DATE('2024-03-05', 'YYYY-MM-DD'), 4, 33000);

INSERT INTO ORDERS (Order_ID, Order_Date, Customer_SID, Amount) VALUES (105, TO_DATE('2024-03-12', 'YYYY-MM-DD'), 5, 27000);

SELECT CUSTOMER.CustID, CUSTOMER.Last_Name, CUSTOMER.First_Name, ORDERS.Amount 
FROM CUSTOMER 
JOIN ORDERS ON CUSTOMER.CustID = ORDERS.Customer_SID;

SELECT * FROM CUSTOMER 
WHERE Last_Name LIKE '%s';

SELECT * FROM ORDERS 
WHERE Amount BETWEEN 21000 AND 30000;

SELECT Order_ID, Amount + 500 AS "new amount" 
FROM ORDERS;

SELECT Order_ID, SUM(Amount) OVER () AS Total_Amount 
FROM ORDERS;

SELECT SUM(Amount) AS Total_Amount 
FROM ORDERS 
WHERE Amount > 15000;

CASE STUDY-

CREATE TABLE Status ( 
    Status_code VARCHAR2(6) PRIMARY KEY, 
    Name CHAR(20) 
);

desc status


CREATE TABLE Ready_Reason ( 
    Reason_code VARCHAR2(15) PRIMARY KEY, 
    Name CHAR(20) 
);

desc READY_REASON


CREATE TABLE Delay_Reason ( 
    Reason_code VARCHAR2(15) PRIMARY KEY, 
    Name CHAR(20) 
);

desc Delay_Reason


CREATE TABLE Event ( 
    Event_id VARCHAR2(6) PRIMARY KEY, 
    Duration NUMBER(20), 
    Status_code VARCHAR2(6), 
    Reason_code VARCHAR2(15), 
    FOREIGN KEY (Status_code) REFERENCES Status(Status_code), 
    FOREIGN KEY (Reason_code) REFERENCES Ready_Reason(Reason_code) 
);

desc event


SELECT E.Event_id, E.Duration, S.Name AS Status_Name 
FROM Event E 
INNER JOIN Status S ON E.Status_code = S.Status_code;

INSERT INTO Status (Status_code, Name) VALUES ('S001', 'In Progress');

INSERT INTO Status (Status_code, Name) VALUES ('S002', 'Completed');

INSERT INTO Status (Status_code, Name) VALUES ('S003', 'Pending');

INSERT INTO Status (Status_code, Name) VALUES ('S004', 'Cancelled');

INSERT INTO Status (Status_code, Name) VALUES ('S005', 'Delayed');

select * from status;

INSERT INTO Ready_Reason (Reason_code, Name) VALUES ('R001', 'Scheduled');

INSERT INTO Ready_Reason (Reason_code, Name) VALUES ('R002', 'Resources Available');

INSERT INTO Ready_Reason (Reason_code, Name) VALUES ('R003', 'No Delay');

INSERT INTO Ready_Reason (Reason_code, Name) VALUES ('R004', 'Pre-checked');

INSERT INTO Ready_Reason (Reason_code, Name) VALUES ('R005', 'Approved');

select * from Ready_Reason;

INSERT INTO Delay_Reason (Reason_code, Name) VALUES ('D001', 'Weather');

INSERT INTO Delay_Reason (Reason_code, Name) VALUES ('D002', 'Technical Issues');

INSERT INTO Delay_Reason (Reason_code, Name) VALUES ('D004', 'Maintenance');

INSERT INTO Delay_Reason (Reason_code, Name) VALUES ('D005', 'Safety Checks');

INSERT INTO Delay_Reason (Reason_code, Name) VALUES ('D003', 'Unavailable');

select * from delay_reason;

INSERT INTO Event (Event_id, Duration, Status_code, Reason_code) VALUES ('E001', 120, 'S001', 'R001');

INSERT INTO Event (Event_id, Duration, Status_code, Reason_code) VALUES ('E002', 90, 'S002', 'R002');

INSERT INTO Event (Event_id, Duration, Status_code, Reason_code) VALUES ('E003', 45, 'S003', 'R003');

INSERT INTO Event (Event_id, Duration, Status_code, Reason_code) VALUES ('E004', 60, 'S004', 'R004');

INSERT INTO Event (Event_id, Duration, Status_code, Reason_code) VALUES ('E005', 30, 'S005', 'R005');

select * from event;

SELECT E.Event_id, E.Duration, S.Name AS Status_Name 
FROM Event E 
INNER JOIN Status S ON E.Status_code = S.Status_code;

SELECT Reason_code, Name FROM Ready_Reason 
UNION 
SELECT Reason_code, Name FROM Delay_Reason;

SELECT E.Event_id, E.Duration, S.Name AS Status_Name, 
       COALESCE(RR.Name, DR.Name) AS Reason_Name 
FROM Event E 
INNER JOIN Status S ON E.Status_code = S.Status_code 
LEFT JOIN Ready_Reason RR ON E.Reason_code = RR.Reason_code 
LEFT JOIN Delay_Reason DR ON E.Reason_code = DR.Reason_code;

