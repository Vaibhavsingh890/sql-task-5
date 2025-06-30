# SQL Task 5 – SQL Joins (INNER, LEFT, RIGHT, FULL, CROSS, SELF)

## 🎯 Objective
The objective of this task is to demonstrate mastery of SQL JOIN operations using two related tables: `Customers` and `Orders`. The task involves writing and executing SQL queries using:

- INNER JOIN
- LEFT JOIN
- RIGHT JOIN
- FULL OUTER JOIN (workaround in MySQL)
- CROSS JOIN
- SELF JOIN (optional advanced)

---

## 🗃️ Database Used
Database name: `sqljoins`

---

## 🛠️ Tables

### 📄 Customers
| Column       | Data Type  |
|--------------|------------|
| customer_id  | INT (PK)   |
| name         | VARCHAR(100) |
| city         | VARCHAR(50) |

### 📄 Orders
| Column       | Data Type      |
|--------------|----------------|
| order_id     | INT (PK)       |
| customer_id  | INT (FK)       |
| product_name | VARCHAR(100)   |

---

## 📥 Sample Data Inserted

### 👤 Customers
- (1, 'Vaibhav', 'Lucknow')
- (2, 'Riya', 'Delhi')
- (3, 'Aman', 'Mumbai')
- (4, 'Anjali', 'Noida')

### 🛒 Orders
- (101, 1, 'Laptop')
- (102, 2, 'Mouse')
- (103, 4, 'Keyboard')

---

## 🔁 SQL Join Queries

### 🔹 INNER JOIN
Returns only the matching records from both tables.

### 🔹 LEFT JOIN
Returns all records from the left (`Customers`) table and matched rows from the right (`Orders`) table.

### 🔹 RIGHT JOIN
Returns all records from the right (`Orders`) table and matched rows from the left (`Customers`) table.

### 🔹 FULL OUTER JOIN (MySQL workaround)
Combines LEFT and RIGHT JOIN using UNION to return all matched and unmatched rows.

### 🔹 CROSS JOIN
Returns the Cartesian product (all combinations) of two tables.

### 🔹 SELF JOIN (Bonus)
Demonstrates joining a table with itself using an `Employees` table.

---

## 📂 File List

- `sql_joins_task.sql` – Main SQL file containing all table creations, inserts, and join queries.
- `README.md` – This file for explanation and documentation.

---

## ✅ Output Verification
All queries were successfully run and tested in **MySQL Workbench**.

---

## 🚀 How to Use

1. Clone or download the repository.
2. Open `sql_joins_task.sql` in MySQL Workbench.
3. Execute step by step.
4. Observe results and test JOIN types.

---

## 📌 Submitted For:
**SQL Developer Internship – Task 5**

📝 [Submission Link](https://forms.gle/8Gm83s53KbyXs3Ne9)

---
