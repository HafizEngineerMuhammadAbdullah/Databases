
USE startersql;
-- Group By & Having Clause
SELECT  gender, AVG(salary) AS 'Average Salary' FROM users GROUP BY gender;
SELECT  gender AS 'Gender', AVG(salary) AS 'Average Salary', COUNT(*) AS 'No of Gender' FROM users GROUP BY gender;
SELECT  gender AS 'Gender', AVG(salary) AS 'Average Salary', COUNT(*) AS 'No of Gender'
FROM users
GROUP BY gender
HAVING AVG(salary) < 61000;
SELECT  gender AS 'Gender', AVG(salary) AS 'Average Salary', COUNT(*) AS 'No of Gender'
FROM users
GROUP BY gender
HAVING AVG(salary) < 61000 AND COUNT(*) < 14;