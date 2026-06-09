# 🗄️ MySQL — Database Learning Repository

![MySQL](https://img.shields.io/badge/MySQL-4479A1?style=for-the-badge&logo=mysql&logoColor=white)
![SQL](https://img.shields.io/badge/SQL-Database-orange?style=for-the-badge)
![Status](https://img.shields.io/badge/Status-Active-brightgreen?style=for-the-badge)

A structured collection of MySQL scripts covering database fundamentals, queries, constraints, joins, functions, and advanced concepts — built while following the **Ultimate MySQL Handbook by CodeWithHarry**.

---

## 👤 Author

**Muhammad Abdullah**
- 💼 [LinkedIn](https://www.linkedin.com/in/muhammad-abdullah-360a87384/)
- 🐙 [GitHub](https://github.com/HafizEngineerMuhammadAbdullah/Oop-Networking-DSA-In-Java)

---

## 📁 Project Structure

```
Database/
│
├── 📄 My_Sql_Script.sql          — Database setup, table creation, INSERT, ALTER
├── 📄 My_sec_sql_script.sql      — WHERE, UPDATE, DELETE, Functions, Transactions
├── 📄 My_third_sql_script.sql    — DELETE, SELECT, INNER JOIN
├── 📄 foreign-key-table.sql      — Foreign Keys, addresses table, ON DELETE CASCADE
├── 📄 random-sql-table-data.sql  — Sample data (30 users) for practice
│
├── 📘 MySQL_Cheatsheet.pdf       — Quick reference for all MySQL commands
└── 📗 MySQL_Handbook.pdf         — Complete MySQL guide by CodeWithHarry
```

---

## 📚 Topics Covered

### 🔷 Database & Table Basics

| Topic | Description |
|-------|-------------|
| `CREATE DATABASE` | Creating and switching databases |
| `CREATE TABLE` | Defining tables with data types and constraints |
| `ALTER TABLE` | Adding, dropping, modifying, and reordering columns |
| `RENAME TABLE` | Renaming an existing table |
| `DROP TABLE` | Permanently removing a table |
| `TRUNCATE TABLE` | Clearing all rows while keeping structure |

---

### 🔶 CRUD Operations

| Operation | Command | Description |
|-----------|---------|-------------|
| **Create** | `INSERT INTO` | Insert single or multiple rows |
| **Read** | `SELECT` | Retrieve all or specific columns |
| **Update** | `UPDATE ... SET` | Modify existing records |
| **Delete** | `DELETE FROM` | Remove specific rows |

---

### 🔍 Querying & Filtering

```sql
-- WHERE Conditions
SELECT * FROM users WHERE gender = 'Female';
SELECT * FROM users WHERE salary BETWEEN 50000 AND 80000;
SELECT * FROM users WHERE name LIKE 'A%';
SELECT * FROM users WHERE date_of_birth IS NOT NULL;
SELECT * FROM users WHERE gender IN ('Male', 'Female');

-- AND / OR / ORDER BY / LIMIT
SELECT * FROM users WHERE gender = 'Male' AND salary > 70000
ORDER BY date_of_birth DESC LIMIT 5;
```

---

### 🔗 Constraints

| Constraint | Purpose |
|------------|---------|
| `PRIMARY KEY` | Uniquely identifies each row |
| `AUTO_INCREMENT` | Auto-generates unique numeric IDs |
| `NOT NULL` | Prevents empty/null values |
| `UNIQUE` | Ensures no duplicate values in a column |
| `DEFAULT` | Sets a fallback value if none provided |
| `CHECK` | Validates data against a condition |
| `FOREIGN KEY` | Links two tables; enforces referential integrity |

---

### 🔁 Foreign Keys & Relationships

```sql
-- addresses table linked to users via foreign key
CREATE TABLE addresses (
  id INT AUTO_INCREMENT PRIMARY KEY,
  user_id INT,
  street VARCHAR(225),
  city VARCHAR(50),
  state VARCHAR(50),
  pincode VARCHAR(10),
  CONSTRAINT fk_user FOREIGN KEY (user_id)
  REFERENCES users(id) ON DELETE CASCADE
);
```

**ON DELETE Options:**

| Option | Behavior |
|--------|----------|
| `CASCADE` | Deletes child rows when parent is deleted |
| `SET NULL` | Sets foreign key to NULL in child table |
| `RESTRICT` | Blocks deletion if child rows exist (default) |

---

### 🔀 JOINs

```sql
-- INNER JOIN — only matching rows
SELECT users.name, addresses.city
FROM users
INNER JOIN addresses ON users.id = addresses.user_id;

-- LEFT JOIN — all users + matched addresses
SELECT users.name, addresses.city
FROM users
LEFT JOIN addresses ON users.id = addresses.user_id;

-- RIGHT JOIN — all addresses + matched users
SELECT users.name, addresses.city
FROM users
RIGHT JOIN addresses ON users.id = addresses.user_id;
```

| JOIN Type | Returns |
|-----------|---------|
| `INNER JOIN` | Only matching rows from both tables |
| `LEFT JOIN` | All rows from left + matching from right |
| `RIGHT JOIN` | All rows from right + matching from left |
| `Self JOIN` | Table joined with itself (e.g. referrals) |

---

### ⚙️ SQL Functions

#### Aggregate Functions
```sql
SELECT COUNT(*) FROM users;
SELECT MIN(salary), MAX(salary) FROM users;
SELECT SUM(salary) AS total_salary FROM users;
SELECT AVG(salary) AS avg_salary FROM users;
SELECT gender, AVG(salary) FROM users GROUP BY gender;
```

#### String Functions
```sql
SELECT LENGTH(name) FROM users;
SELECT UPPER(name), LOWER(name) FROM users;
SELECT CONCAT(UPPER(name), '2026') AS username FROM users;
```

#### Date & Time Functions
```sql
SELECT NOW(), CURDATE() FROM users;
SELECT YEAR(date_of_birth), MONTH(date_of_birth) FROM users;
SELECT DATEDIFF(CURDATE(), date_of_birth) AS total_days FROM users;
SELECT TIMESTAMPDIFF(YEAR, date_of_birth, CURDATE()) AS age FROM users;
```

#### Mathematical Functions
```sql
SELECT FLOOR(salary), ROUND(salary), CEIL(salary) FROM users;
```

---

### 💳 Transactions & AutoCommit

```sql
SET autocommit = 0;       -- Disable auto-save
DELETE FROM users WHERE id = 5;
ROLLBACK;                 -- Undo the change
COMMIT;                   -- Save permanently
SET autocommit = 1;       -- Re-enable auto-save
```

---

### 📊 GROUP BY & HAVING

```sql
-- Average salary by gender
SELECT gender, AVG(salary) AS avg_salary
FROM users
GROUP BY gender
HAVING AVG(salary) > 70000;

-- Count referrals per user
SELECT referred_by_id, COUNT(*) AS total_referred
FROM users
WHERE referred_by_id IS NOT NULL
GROUP BY referred_by_id
HAVING COUNT(*) > 1;
```

---

### 🧠 Advanced Concepts

| Concept | Description |
|---------|-------------|
| **Views** | Virtual tables based on SELECT queries; always reflects live data |
| **Indexes** | Speeds up searches on frequently queried columns |
| **Subqueries** | Nested queries inside SELECT, WHERE, or FROM |
| **UNION / UNION ALL** | Combines results of two SELECT statements |
| **Stored Procedures** | Reusable SQL blocks called with `CALL` |
| **Triggers** | Auto-executed SQL on INSERT, UPDATE, or DELETE |
| **Self JOIN** | Joins a table with itself (e.g., referral relationships) |
| **ROLLUP** | Adds subtotals and grand totals to GROUP BY results |

---

## 🚀 Getting Started

### Prerequisites
- **MySQL Server** — [Download here](https://dev.mysql.com/downloads/installer/)
- **MySQL Workbench** (recommended GUI) or any SQL client

### How to Run Scripts

**In MySQL Workbench:**
1. Open MySQL Workbench and connect to your server
2. Go to **File → Open SQL Script**
3. Select any `.sql` file from this repo
4. Click the ⚡ **Execute** button

**In CMD / Terminal:**
```bash
mysql -u root -p
source C:/path/to/My_Sql_Script.sql
```

### Recommended Order to Run Scripts
```
1. My_Sql_Script.sql          → Sets up the database and users table
2. random-sql-table-data.sql  → Inserts 30 sample users
3. My_sec_sql_script.sql      → Practice queries, functions, transactions
4. foreign-key-table.sql      → Creates addresses table with foreign key
5. My_third_sql_script.sql    → Joins and advanced queries
```

---

## 🗺️ Learning Roadmap

```
Beginner            Intermediate           Advanced
────────────────────────────────────────────────────────
CREATE/DROP DB      WHERE Filters          Views
CREATE TABLE        Aggregate Functions    Indexes
INSERT / SELECT     GROUP BY & HAVING      Stored Procedures
ALTER TABLE         JOINs                  Triggers
UPDATE / DELETE     Foreign Keys           Subqueries
Constraints         Transactions           Self JOIN / UNION
```

---

## 📄 Resources Included

| File | Description |
|------|-------------|
| `MySQL_Cheatsheet.pdf` | Quick reference for all MySQL syntax |
| `MySQL_Handbook.pdf` | Full beginner-to-advanced guide by CodeWithHarry |

---

## 📄 License

This project is open-source and available for educational purposes.

---

> *"Data is the new oil — and SQL is how you refine it."*
