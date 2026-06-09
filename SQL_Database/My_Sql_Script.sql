CREATE DATABASE startersql;
USE startersql;
-- Create a Table 
CREATE TABLE users (
  id INT AUTO_INCREMENT PRIMARY KEY,
  name VARCHAR(100) NOT NULL,
  email VARCHAR(100) UNIQUE NOT NULL,
  gender ENUM('Male','Female','Others'),
  date_of_birth DATE,
  created_at TIMESTAMP DEFAULT CURRENT_TIMESTAMP
); 

-- SELECT * FROM users;
SELECT * FROM customer;
-- Select a Specific column from Table
SELECT email , date_of_birth FROM users;
-- Rename Table name
RENAME TABLE users TO customer;

-- Modifying a Column in a Table
-- Add New Column into a table
ALTER TABLE customer ADD COLUMN is_active BOOLEAN DEFAULT true;
-- Drop(Eliminate/Remove/Delete) existing Column from a table
ALTER TABLE customer DROP COLUMN is_active;
-- Change the Datatype of a specific Column
ALTER TABLE customer MODIFY COLUMN name VARCHAR(200);
-- Move the Specific Column After a Specific Column
ALTER TABLE customer MODIFY COLUMN email VARCHAR(100) AFTER id;
-- Move the Specific Column as First Column
ALTER TABLE customer MODIFY COLUMN name VARCHAR(200) FIRST;


-- Inserting Data into a Table 
INSERT INTO customer VALUES 
('Prof Abdullah', 1, 'abdullahkhalid2k25@gmail.com' , 'Male', '2006-04-11', DEFAULT);
-- Inserting Data into a Specific Column
INSERT INTO customer (name , email , id , gender , date_of_birth) VALUES 
('Ayesha' , 'ayesha2010@gmail.com', 2, 'Female', '2010-12-31');
-- Inserting Multiple Data into a Table in a Multiple Rows
-- Inserting Multiple Rows at Once
INSERT INTO customer (id , name , email , gender , date_of_birth) VALUES 
(3,'Ayesha Khan', 'ayeshakhan@gmail.com' , 'Female' , '2006-09-12'),
(4,'Sara', 'sara@gmail.com' , 'Female' , '2020-10-15'),
(5,'Maheen', 'maheen@gmail.com' , 'Female' , '2004-3-20'),
(6,'Ali', 'ali@gmail.com' , 'Male' , '2025-01-05');
