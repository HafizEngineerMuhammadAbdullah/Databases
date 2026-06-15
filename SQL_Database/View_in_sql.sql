
-- View In MySQL :-
USE startersql;
CREATE VIEW rich_users AS
SELECT * FROM users WHERE salary > 70000;

UPDATE users SET salary = 30000 WHERE id = 5;
-- SELECT * FROM rich_users;
DROP VIEW rich_users;