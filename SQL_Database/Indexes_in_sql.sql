-- Indexes in MySQL :-
USE startersql;
SHOW INDEXES FROM users;

SELECT * FROM users;
CREATE INDEX idx_gender ON users (gender);
SELECT * FROM users WHERE email = 'sara.ahmed@example.com' AND gender = 'Female';
-- Create a Multi-Column index
CREATE INDEX idex_gender_salary ON users(gender,salary);