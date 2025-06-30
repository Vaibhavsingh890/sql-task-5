-- Step 1: Create and use the database
CREATE DATABASE IF NOT EXISTS sqljoins;
USE sqljoins;

-- Step 2: Drop existing tables (optional cleanup)
DROP TABLE IF EXISTS Orders;
DROP TABLE IF EXISTS Customers;

-- Step 3: Create Customers table
CREATE TABLE Customers (
    customer_id INT PRIMARY KEY,
    name VARCHAR(100),
    city VARCHAR(50)
);

-- Step 4: Create Orders table
CREATE TABLE Orders (
    order_id INT PRIMARY KEY,
    customer_id INT,
    product_name VARCHAR(100),
    FOREIGN KEY (customer_id) REFERENCES Customers(customer_id)
);

-- Step 5: Insert sample data into Customers
INSERT INTO Customers (customer_id, name, city) VALUES
(1, 'Vaibhav', 'Lucknow'),
(2, 'Riya', 'Delhi'),
(3, 'Aman', 'Mumbai'),
(4, 'Anjali', 'Noida');  -- This allows customer_id 4 for orders

-- Step 6: Insert sample data into Orders
INSERT INTO Orders (order_id, customer_id, product_name) VALUES
(101, 1, 'Laptop'),
(102, 2, 'Mouse'),
(103, 4, 'Keyboard'); -- Matches new customer_id 4

-- Step 7: INNER JOIN
SELECT c.name AS Customer, o.product_name AS Product
FROM Customers c
INNER JOIN Orders o ON c.customer_id = o.customer_id;

-- Step 8: LEFT JOIN
SELECT c.name AS Customer, o.product_name AS Product
FROM Customers c
LEFT JOIN Orders o ON c.customer_id = o.customer_id;

-- Step 9: RIGHT JOIN (only in MySQL)
SELECT c.name AS Customer, o.product_name AS Product
FROM Customers c
RIGHT JOIN Orders o ON c.customer_id = o.customer_id;

-- Step 10: FULL OUTER JOIN (MySQL workaround using UNION)
SELECT c.name AS Customer, o.product_name AS Product
FROM Customers c
LEFT JOIN Orders o ON c.customer_id = o.customer_id
UNION
SELECT c.name AS Customer, o.product_name AS Product
FROM Customers c
RIGHT JOIN Orders o ON c.customer_id = o.customer_id;

-- Step 11: CROSS JOIN
SELECT c.name AS Customer, o.product_name AS Product
FROM Customers c
CROSS JOIN Orders o;

-- Step 12: SELF JOIN Example (optional)
DROP TABLE IF EXISTS Employees;

CREATE TABLE Employees (
    employee_id INT PRIMARY KEY,
    name VARCHAR(100),
    manager_id INT
);

INSERT INTO Employees VALUES
(1, 'John', NULL),
(2, 'Alice', 1),
(3, 'Bob', 1),
(4, 'Ravi', 2);

-- Self join: employee to manager relationship
SELECT e1.name AS Employee, e2.name AS Manager
FROM Employees e1
LEFT JOIN Employees e2 ON e1.manager_id = e2.employee_id;
