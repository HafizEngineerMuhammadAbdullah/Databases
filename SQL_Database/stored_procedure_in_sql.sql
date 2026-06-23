-- Stored Procedures In MySQL :-
USE startersql;
SELECT * FROM users;
-- DELIMITER $$
-- CREATE PROCEDURE select_users()
-- BEGIN
--   SELECT * FROM users;
-- END $$
-- DELIMITER ;

DELIMITER $$
CREATE PROCEDURE AddUsers(
	IN p_name VARCHAR(100),
	IN p_email VARCHAR(100),
	IN p_gender ENUM('Male','Female', 'Other'),
	IN p_dob DATE,
	IN p_salary INT
)
BEGIN
  SELECT * FROM users;
END $$
DELIMITER ;

CALL select_users();