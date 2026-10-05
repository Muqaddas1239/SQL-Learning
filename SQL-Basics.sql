SHOW DATABASES;
USE student_db;
SELECT DATABASE();
CREATE TABLE students(
    id INT,
    name VARCHAR(30),
    age INT,
    city VARCHAR(30)
);
SHOW TABLES;
DESCRIBE students;
INSERT INTO students(id, name, age, city)
VALUES(1, 'Muqadas', 23, 'Multan');
SELECT*FROM students;
INSERT INTO students(id, name, age, city)
VALUES
(2, 'Sara', 22, 'Lahore'),
(3, 'Ali', 27, 'Multan'),
(4, 'Hamza', 28, 'Islamabad');
SELECT*FROM students;