USE startersql;
CREATE TABLE admin_users (
  id INT PRIMARY KEY,
   name VARCHAR(100),
   email VARCHAR(100),
   gender ENUM('Male','Female', 'Others'),
   date_of_birth DATE,
   salary INT
);
DROP TABLE admin_users;

INSERT INTO admin_users (id, name, email, gender, date_of_birth, salary)
VALUES
(101, 'Ahmed', 'ahmed@example.com', 'Male', '1985-04-12', 60000),
(102, 'sheriyar', 'pooja@example.com', 'Female', '1992-09-20', 58000),
(103, 'Ayesha', 'ayesha@example.com', 'Female', '1989-11-05', 54000),
(104, 'Fatima Begum', 'fatima@example.com', 'Female', '1990-06-30', 62000);

-- UNION in My SQL
SELECT id, name , email , salary, 'User' AS role FROM users
UNION 
SELECT id , name , email, salary , 'Admin' AS role FROM admin_users;

-- Order by in Union
SELECT id, name , email , salary, date_of_birth , 'User' AS role FROM users
UNION 
SELECT id , name , email, salary , date_of_birth , 'Admin' AS role FROM admin_users
ORDER BY date_of_birth;


-- Self Join in MySql :-
USE startersql;
ALTER TABLE 
users
ADD COLUMN referred_by_id INT;

UPDATE users SET referred_by_id = 1 WHERE id IN (2,3,13,14,15,16,18,20);

UPDATE users SET referred_by_id = 2 WHERE id = 4;

SELECT * FROM users;

SELECT 
a.id,
a.name AS user_name,
b.name AS referred_by_name
FROM users a
INNER JOIN users b ON a.referred_by_id = b.id;

SELECT
a.id,
a.name AS user_name,
b.name AS referred_by_name
FROM users a
LEFT JOIN users b ON a.referred_by_id = b.id;  
