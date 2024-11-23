-- 1. Create Employees table
CREATE TABLE Employees_Copy (
    EmployeeID NUMBER PRIMARY KEY,
    FirstName VARCHAR2(50),
    LastName VARCHAR2(50),
    Department VARCHAR2(50),
    Salary NUMBER
);

-- 2. Insert records into the Employees table
INSERT INTO Employees_Copy (EmployeeID, FirstName, LastName, Department, Salary) VALUES (101, 'John1', 'Doe1', 'HR', 20000);
INSERT INTO Employees_Copy (EmployeeID, FirstName, LastName, Department, Salary) VALUES (102, 'John2', 'Doe2', 'IT', 50000);
INSERT INTO Employees_Copy (EmployeeID, FirstName, LastName, Department, Salary) VALUES (103, 'John3', 'Doe3', 'CS', 40000);
INSERT INTO Employees_Copy (EmployeeID, FirstName, LastName, Department, Salary) VALUES (104, 'John4', 'Doe4', 'IT', 10000);
INSERT INTO Employees_Copy (EmployeeID, FirstName, LastName, Department, Salary) VALUES (105, 'John5', 'Doe5', 'ZX', 30000);

-- 3. Update the salary of an employee with EmployeeID 101 to 600000
UPDATE Employees_Copy
SET Salary = 600000
WHERE EmployeeID = 101;

-- 4. Delete a record of an employee whose Department is '101'
DELETE FROM Employees_Copy
WHERE Department = '101';

-- 5. Retrieve all employees in the IT department
SELECT *
FROM Employees_Copy
WHERE Department = 'IT';

-- 6. Select all data from the table, concatenating FirstName and LastName into one column
SELECT EmployeeID, FirstName || ' ' || LastName AS FullName, Department, Salary
FROM Employees_Copy;
