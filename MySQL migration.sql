SHOW DATABASES;

CREATE DATABASE company_db;

USE company_db;

CREATE TABLE employees (
    id INT AUTO_INCREMENT PRIMARY KEY,
    first_name VARCHAR(50),
    department VARCHAR(50),
    salary DECIMAL(10,2),
    joining_date DATETIME
);

INSERT INTO employees (first_name, department, salary, joining_date) VALUES
('Amit', 'IT', 75000.00, '2022-03-15'),
('Priya', 'HR', 65000.00, '2021-07-01'),
('Rahul', 'Finance', 80000.00, '2019-09-20'),
('Neha', 'Marketing', 70000.00, '2020-01-11'),
('Rohan', 'IT', 72000.00, '2023-06-10'),
('Anjali', 'Operations', 60000.00, '2018-05-17'),
('Vikram', 'Finance', 85000.00, '2017-12-25'),
('Suman', 'HR', 62000.00, '2022-02-05'),
('Kiran', 'Marketing', 68000.00, '2020-09-29'),
('Deepak', 'Operations', 59000.00, '2019-04-14');

SELECT*FROM employees;

SHOW CREATE TABLE employees;

SELECT JSON_OBJECT(
    'id', id,
    'first_name', first_name,
    'department', department,
    'salary', salary,
    'joining_date', joining_date
)
FROM employees;

