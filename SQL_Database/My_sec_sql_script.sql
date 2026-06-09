CREATE DATABASE IF NOT EXISTS startersql;
USE startersql;

CREATE TABLE users (
 id INT AUTO_INCREMENT PRIMARY KEY,
 name VARCHAR(100) NOT NULL,
 email VARCHAR(100) UNIQUE NOT NULL,
 gender ENUM('Male' , 'Female' , 'Other'),
 date_of_birth DATE,
 salary DECIMAL(10,2),
 created_at TIMESTAMP DEFAULT CURRENT_TIMESTAMP
);

SELECT * FROM users;
SELECT gender , email FROM users;

-- WHERE Query
SELECT * FROM users WHERE gender = 'Female';
SELECT * FROM users WHERE gender = 'Male';
SELECT * FROM users WHERE gender != 'Female';
SELECT * FROM users WHERE gender <> 'Male';

SELECT * FROM users WHERE date_of_birth < '1999-02-13';

SELECT * FROM users WHERE id > 10;


SELECT * FROM users WHERE date_of_birth IS NULL;
SELECT * FROM users WHERE date_of_birth IS NOT NULL;
SELECT * FROM users WHERE date_of_birth BETWEEN '1990-01-01' AND '1999-01-01';
SELECT * FROM users WHERE gender in ('Male' , 'Female');
-- AND OR in SQL
SELECT * FROM users WHERE gender = 'Male' AND salary > '70000';
SELECT * FROM users WHERE gender = 'Female' AND salary < '70000';
SELECT * FROM users WHERE gender = 'Male' OR salary > '60000';
-- Order query in SQL
SELECT * FROM users WHERE gender = 'Male' OR salary > '60000' ORDER BY date_of_birth ASC;
SELECT * FROM users WHERE gender = 'Male' OR salary > '60000' ORDER BY date_of_birth DESC;
-- lIMIT IN sql
SELECT * FROM users WHERE gender = 'Male' OR salary > '60000' ORDER BY date_of_birth DESC LIMIT 5;

-- UPDATING the data
UPDATE users SET salary = 75000 WHERE id = 1;
UPDATE users SET date_of_birth = '2006-09-21', salary = 70000 WHERE id = 2;
UPDATE users SET name = 'Ayesha Khan', salary = 70000 WHERE email = 'ayesha.malik@example.com';
UPDATE users SET name = 'Ayesha Malik', salary = 70000 WHERE email = 'ayesha.malik@example.com';
UPDATE users SET salary = salary + 10000 WHERE salary < 60000;

-- Deleting Data from Table
DELETE FROM users WHERE salary <= 50000;
DELETE FROM users WHERE salary IS NULL;

-- Drop(Delete/Eliminate/Remove) the entire Table
DROP TABLE users;
INSERT INTO users (name, email, gender, date_of_birth, salary)
VALUES
('Ali Khan', 'ali.khan@example.com', 'Male', '1905-05-12', 45000.00);
ALTER TABLE users
ADD CONSTRAINT chk_dob CHECK (date_of_birth > '1920-01-01');

-- Function in SQL :-
-- 1. Aggregate Function
SELECT COUNT(*) FROM users;
SELECT COUNT(*) FROM users WHERE gender = 'Male';
SELECT COUNT(*) FROM users WHERE gender = 'Female';  
SELECT MIN(salary) AS min_salary, MAX(salary) AS max_salary FROM users;
SELECT SUM(salary) AS total_salary FROM users;
SELECT AVG(salary) AS avg_salary FROM users;
SELECT gender , AVG(salary) AS avg_salary FROM users GROUP BY gender;
SELECT gender , SUM(salary) AS avg_salary FROM users GROUP BY gender;
SELECT name , LENGTH(name) AS name_size FROM users;
SELECT id , gender , name , LENGTH(name) AS name_size FROM users;
SELECT id , gender , UPPER(name) AS capital_name , LENGTH(name) AS name_size FROM users;
SELECT id , gender , LOWER(name) AS lower_name, LENGTH(name) AS name_size FROM users;
SELECT id , gender , LOWER(name) AS lower_name, CONCAT(UPPER(name) , '2026') AS username , LENGTH(name) AS name_size FROM users;
SELECT id , gender , LOWER(name) AS lower_name, CONCAT(UPPER(name) , '2026') AS username , NOW() AS curr_time , LENGTH(name) AS name_size FROM users;
SELECT id , gender , LOWER(name) AS lower_name, CONCAT(UPPER(name) , '2026') AS username , NOW() AS curr_time , YEAR(date_of_birth) AS year_of_birth, MONTH(date_of_birth) AS month_of_birth, DAY(date_of_birth) AS day_of_birth, LENGTH(name) AS name_size FROM users;
SELECT id , name , DATEDIFF(CURDATE() , date_of_birth) AS total_days FROM users;
SELECT name , TIMESTAMPDIFF(YEAR, date_of_birth, CURDATE()) AS age FROM users;

-- Mathematical Functions In SQL :-
SELECT 
FLOOR(salary) AS lower_salary,
ROUND(salary) AS round_salary,
CEIL(salary) AS ceil_salary
FROM users;

-- Auto Commit & Transactions
SELECT * FROM users;
SET autocommit = 0;
DELETE FROM users WHERE id = 5;
ROLLBACK;
COMMIT;


