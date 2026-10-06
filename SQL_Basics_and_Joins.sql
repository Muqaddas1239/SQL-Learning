CREATE DATABASE IF NOT EXISTS company_db;

USE company_db;

CREATE TABLE departments (
    department_id INT PRIMARY KEY,
    department_name VARCHAR(50)
);

CREATE TABLE employees (
    employee_id INT PRIMARY KEY,
    employee_name VARCHAR(100),
    age INT,
    salary DECIMAL(10,2),
    department_id INT,
    FOREIGN KEY (department_id) REFERENCES departments(department_id)
);

INSERT INTO departments (department_id, department_name)
VALUES
(1, 'IT'),
(2, 'HR'),
(3, 'Finance'),
(4, 'Marketing');

INSERT INTO employees (employee_id, employee_name, age, salary, department_id)
VALUES
(101, 'Ali', 24, 60000, 1),
(102, 'Sara', 27, 75000, 2),
(103, 'Ahmed', 25, 65000, 1),
(104, 'Ayesha', 30, 90000, 3),
(105, 'Usman', 28, 70000, 4);

SELECT * FROM employees;
SELECT employee_name, salary
FROM employees;
SELECT *
FROM employees
WHERE salary > 70000;
SELECT *
FROM employees
ORDER BY salary DESC;

SELECT *
FROM employees
ORDER BY salary ASC;

SELECT *
FROM employees
WHERE salary > 60000
ORDER BY salary DESC;
SELECT *
FROM employees
WHERE salary > 60000
AND age < 30;