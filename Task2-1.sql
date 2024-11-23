-- 1. Create the Doctor table
CREATE TABLE Doctor (
    id NUMBER PRIMARY KEY,
    name VARCHAR2(50),
    salary NUMBER,
    address VARCHAR2(100)
);

-- 2. Insert 10 rows with data
INSERT INTO Doctor (id, name, salary, address) VALUES (1, 'Dr. Ahmed', 10000, 'Cairo');
INSERT INTO Doctor (id, name, salary, address) VALUES (2, 'Dr. Salma', 12000, 'Alexandria');
INSERT INTO Doctor (id, name, salary, address) VALUES (3, 'Dr. Mona', 15000, 'Giza');
INSERT INTO Doctor (id, name, salary, address) VALUES (4, 'Dr. Omar', 18000, 'Aswan');
INSERT INTO Doctor (id, name, salary, address) VALUES (5, 'Dr. Fatma', 11000, 'Mansoura');
INSERT INTO Doctor (id, name, salary, address) VALUES (6, 'Dr. Ehab', 9000, 'Tanta');
INSERT INTO Doctor (id, name, salary, address) VALUES (7, 'Dr. Nada', 9500, 'Luxor');
INSERT INTO Doctor (id, name, salary, address) VALUES (8, 'Dr. Kareem', 13000, 'Suez');
INSERT INTO Doctor (id, name, salary, address) VALUES (9, 'Dr. Yasser', 14000, 'Port Said');
INSERT INTO Doctor (id, name, salary, address) VALUES (10, 'Dr. Hanan', 8000, 'Zagazig');

-- 3. Update the salary of record number 3 to 20000
UPDATE Doctor
SET salary = 20000
WHERE id = 3;

-- 4. Delete record number 9
DELETE FROM Doctor
WHERE id = 9;

-- 5. Concatenate all names with their salaries
SELECT CONCAT(name, salary) AS Name_Salary
FROM Doctor;

-- 6. Display all records with salary multiplied by 2
SELECT id, name, salary * 2 AS Double_Salary, address
FROM Doctor;

-- 7. Select all data with salary 1000, 2000, or 3000
SELECT *
FROM Doctor
WHERE salary IN (1000, 2000, 3000);

-- 8. Rename the Doctor table to PRD_DOCTOR
ALTER TABLE Doctor RENAME TO PRD_DOCTOR;
