-- Stored Procedures In MySQL :-
USE startersql;
SELECT * FROM users;
-- DELIMITER $$
-- CREATE PROCEDURE select_users()
-- BEGIN
--   SELECT * FROM users;
-- END $$
-- DELIMITER ;

-- DELIMITER $$
-- CREATE PROCEDURE AddUsers(
-- 	IN p_name VARCHAR(100),
-- 	IN p_email VARCHAR(100),
-- 	IN p_gender ENUM('Male','Female', 'Other'),
-- 	IN p_dob DATE,
-- 	IN p_salary INT
-- )
-- BEGIN
--   INSERT INTO users (name,email, gender, date_of_birth, salary) 
--   VALUES (p_name,p_email,p_gender,p_dob,p_salary);
--   SELECT * FROM users;
-- END $$
-- DELIMITER ;

-- CALL select_users();
-- Call Procedure
CALL AddUSers("Abdullah","abdullahkhalid2k25@gmail.com" , "Male", "2006-04-11", 100000); 
CALL AddUSers("Ayesha khan","ayesha2006@gmail.com" , "Female", "2005-04-11", 50000); 
SHOW PROCEDURE STATUS WHERE Db = "startersql";

-- Delete Stored Procedure
DROP PROCEDURE IF EXISTS AddUsers;

