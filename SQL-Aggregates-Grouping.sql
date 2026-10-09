
CREATE DATABASE IF NOT EXISTS sql_learning;
USE sql_learning;

CREATE TABLE IF NOT EXISTS sales (
    sale_id INT PRIMARY KEY,
    product VARCHAR(50),
    category VARCHAR(50),
    quantity INT,
    unit_price DECIMAL(10, 2)
);

INSERT INTO sales
    (sale_id, product, category, quantity, unit_price)
VALUES
    (1, 'Laptop', 'Electronics', 2, 80000),
    (2, 'Mouse', 'Electronics', 5, 1500),
    (3, 'Chair', 'Furniture', 3, 7000),
    (4, 'Desk', 'Furniture', 2, 15000),
    (5, 'Keyboard', 'Electronics', 4, 2500);

SELECT * FROM sales;

SELECT COUNT(*) AS total_sales
FROM sales;

SELECT SUM(quantity * unit_price) AS total_revenue
FROM sales;

SELECT AVG(unit_price) AS average_price
FROM sales;

SELECT MAX(unit_price) AS highest_price
FROM sales;

SELECT MIN(unit_price) AS lowest_price
FROM sales;

SELECT category, COUNT(*) AS number_of_sales
FROM sales
GROUP BY category;

SELECT
    category,
    SUM(quantity * unit_price) AS total_revenue
FROM sales
GROUP BY category
ORDER BY total_revenue DESC;

SELECT
    category,
    AVG(unit_price) AS average_price
FROM sales
GROUP BY category;