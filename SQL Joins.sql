
-- 1. Create Database
DROP DATABASE IF EXISTS joins_practice;
CREATE DATABASE joins_practice;

USE joins_practice;


-- 2. Create Departments Table
CREATE TABLE departments (
    department_id INT PRIMARY KEY,
    department_name VARCHAR(50)
);

INSERT INTO departments (department_id, department_name)
VALUES
(1, 'IT'),
(2, 'HR'),
(3, 'Finance'),
(4, 'Marketing'),
(5, 'Sales');


-- 3. Create Employees Table
CREATE TABLE employees (
    employee_id INT PRIMARY KEY,
    employee_name VARCHAR(50),
    department_id INT,
    salary DECIMAL(10,2)
);

INSERT INTO employees (employee_id, employee_name, department_id, salary)
VALUES
(101, 'Ali', 1, 60000),
(102, 'Ahmed', 2, 55000),
(103, 'Sara', 1, 70000),
(104, 'Ayesha', 3, 65000),
(105, 'Usman', 5, 50000),
(106, 'Hassan', NULL, 45000);


-- 4. INNER JOIN
SELECT
    e.employee_name,
    d.department_name
FROM employees AS e
INNER JOIN departments AS d
ON e.department_id = d.department_id;


-- 5. INNER JOIN with Salary
SELECT
    e.employee_name,
    d.department_name,
    e.salary
FROM employees AS e
INNER JOIN departments AS d
ON e.department_id = d.department_id;


-- 6. LEFT JOIN
SELECT
    e.employee_name,
    d.department_name
FROM employees AS e
LEFT JOIN departments AS d
ON e.department_id = d.department_id;


-- 7. RIGHT JOIN
SELECT
    e.employee_name,
    d.department_name
FROM employees AS e
RIGHT JOIN departments AS d
ON e.department_id = d.department_id;


-- 8. JOIN with WHERE
SELECT
    e.employee_name,
    d.department_name,
    e.salary
FROM employees AS e
INNER JOIN departments AS d
ON e.department_id = d.department_id
WHERE e.salary > 55000;


-- 9. JOIN with ORDER BY
SELECT
    e.employee_name,
    d.department_name,
    e.salary
FROM employees AS e
INNER JOIN departments AS d
ON e.department_id = d.department_id
ORDER BY e.salary DESC;


-- 10. COUNT Employees by Department
SELECT
    d.department_name,
    COUNT(e.employee_id) AS total_employees
FROM departments AS d
LEFT JOIN employees AS e
ON d.department_id = e.department_id
GROUP BY d.department_name;


-- 11. Average Salary by Department
SELECT
    d.department_name,
    AVG(e.salary) AS average_salary
FROM departments AS d
INNER JOIN employees AS e
ON d.department_id = e.department_id
GROUP BY d.department_name;


-- 12. JOIN with Aliases
SELECT
    e.employee_name,
    d.department_name,
    e.salary
FROM employees AS e
INNER JOIN departments AS d
ON e.department_id = d.department_id;


-- 13. Find Employees Without a Department
SELECT
    e.employee_name,
    e.salary
FROM employees AS e
LEFT JOIN departments AS d
ON e.department_id = d.department_id
WHERE d.department_id IS NULL;


-- 14. Find Departments Without Employees
SELECT
    d.department_name
FROM departments AS d
LEFT JOIN employees AS e
ON d.department_id = e.department_id
WHERE e.employee_id IS NULL;
```
