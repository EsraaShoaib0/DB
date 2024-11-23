-- 1. Create the Manger table
CREATE TABLE Manger (
    id NUMBER PRIMARY KEY,
    name VARCHAR2(50),
    age NUMBER,
    birth_date DATE,
    address VARCHAR2(100)
);

-- 2. Drop the address column
ALTER TABLE MANGER DROP COLUMN address;

-- 3. Add city_address and street columns
ALTER TABLE Manger 
ADD (
    city_address VARCHAR2(100),
    street VARCHAR2(100)
);

-- 4. Modify column name to full_name
ALTER TABLE Manger RENAME COLUMN name TO full_name;

-- 5. Make the table read-only
ALTER TABLE Manger READ ONLY;

-- 6. Create the Owner table with specific columns
CREATE TABLE Owner AS
SELECT id, full_name AS name, birth_date
FROM Manger;

-- 7. Rename the Manger table to Master
ALTER TABLE Manger RENAME TO Mister;

-- 8. Drop all tables
DROP TABLE Mister CASCADE CONSTRAINTS;
DROP TABLE Owner CASCADE CONSTRAINTS;
