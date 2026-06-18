-- SubQueries in MySQL :-
USE startersql;
-- SELECT AVG(salary) AS avg_salary FROM users; 

SELECT * FROM users WHERE salary > (SELECT AVG(salary) FROM users);
SELECT * FROM users WHERE salary < (SELECT AVG(salary) FROM users);

SELECT id,name,email,referred_by_id 
FROM users
WHERE referred_by_id IN (
SELECT id FROM users WHERE salary > 200000
);

SELECT id , name , salary ,
(SELECT AVG(salary) FROM users) AS average_employee_salary
FROM users;