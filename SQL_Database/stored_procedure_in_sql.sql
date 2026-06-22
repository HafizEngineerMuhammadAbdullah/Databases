-- Stored Procedures In MySQL :-
USE startersql;
SELECT * FROM users;
DELIMITER $$
CREATE PROCEDURE select_users()
BEGIN
  SELECT * FROM users;
END $$
DELIMITER ;

CALL select_users();