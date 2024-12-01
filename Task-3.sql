/*1. Find all employee where the emp_id is within a certain range 100 and 105.*/
SELECT * FROM EMPLOYEES WHERE EMPLOYEE_ID BETWEEN 100 AND 105;

/*2. Find all employee that belong to a specific set of emp_id 151, 152, 153, 154, 155.*/
SELECT * FROM EMPLOYEES WHERE EMPLOYEE_ID IN (151, 152, 153, 154, 155);

/*3. Retrieve all employee where the employee first_name starts with the letter 'P' OR 'p'*/
SELECT * FROM EMPLOYEES WHERE FIRST_NAME LIKE 'P%' OR FIRST_NAME LIKE 'p%';

/*4. Retrieve all employee where the employee first_name ends with the letter 'A' OR 'a'*/
SELECT * FROM EMPLOYEES WHERE FIRST_NAME LIKE '%A' OR FIRST_NAME LIKE '%a';

/*5. Retrieve all employee where the employee first_name contains the letter 'A' OR 'a'*/
SELECT * FROM EMPLOYEES WHERE FIRST_NAME LIKE '%A%' OR FIRST_NAME LIKE '%a%';

/*6. Retrieve all employee where the employee first_name's third char is the letter 'e' OR 'E'*/
SELECT * FROM EMPLOYEES WHERE FIRST_NAME LIKE '__E%' OR FIRST_NAME LIKE '__e%';

/*7. Retrieve all employees who don't have a manager assigned (i.e., manager_id is NULL).*/
SELECT * FROM EMPLOYEES WHERE MANAGER_ID IS NULL;

/*8. Find all employees who have a manager assigned.*/
SELECT * FROM EMPLOYEES WHERE MANAGER_ID IS NOT NULL;

/*9. Insert a new employee without assigning a manager (NULL value for manager_id).*/
INSERT INTO EMPLOYEES(
    EMPLOYEE_ID, FIRST_NAME, LAST_NAME, EMAIL, PHONE_NUMBER, HIRE_DATE, 
    JOB_ID, SALARY, COMMISSION_PCT, MANAGER_ID, DEPARTMENT_ID
) 
VALUES (
    301, 'Alex', 'Smith', 'alex.smith@example.com', '123-456-7890', TO_DATE('2024-12-01', 'YYYY-MM-DD'), 
    'SA_REP', 4500.00, NULL, NULL, 10
);

/*10. Find all employees who work either in the 'AD_VP' JOB_ID or the 'IT_PROG' JOB_ID.*/
SELECT * FROM EMPLOYEES WHERE JOB_ID IN ('AD_VP', 'IT_PROG');

/*11. Retrieve all employees sorted by their last_name in ascending order.*/
SELECT * FROM EMPLOYEES ORDER BY LAST_NAME ASC;

/*12. Retrieve all employees sorted by their hire_date in descending order.*/
SELECT * FROM EMPLOYEES ORDER BY HIRE_DATE DESC;

/*13. Sort employees first by department in ascending order and then by salary in descending order within each department_id.*/
SELECT * FROM EMPLOYEES ORDER BY DEPARTMENT_ID ASC, SALARY DESC;

/*14. Retrieve all employees with their last_name in lowercase.*/
SELECT EMPLOYEE_ID, FIRST_NAME, LOWER(LAST_NAME) AS LAST_NAME FROM EMPLOYEES;

/*15. Retrieve all employees with their first_name in uppercase.*/
SELECT EMPLOYEE_ID, UPPER(FIRST_NAME) AS FIRST_NAME, LAST_NAME FROM EMPLOYEES;

/*16. Retrieve all employees with their first_name and last_name in title case (first letter capitalized).*/
SELECT EMPLOYEE_ID, INITCAP(FIRST_NAME) AS FIRST_NAME, INITCAP(LAST_NAME) AS LAST_NAME FROM EMPLOYEES;

/*17. Find employees whose last_name is 'smith', regardless of the case.*/
SELECT * FROM EMPLOYEES WHERE LOWER(LAST_NAME) = 'smith';
