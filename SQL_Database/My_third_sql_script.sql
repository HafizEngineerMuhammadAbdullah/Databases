USE startersql;

-- DELETE FROM users WHERE id = 4;
SELECT * FROM users;
SELECT * FROM addresses;
SELECT * FROM admin_users;

-- Join In MySQL
-- 1. Inner Join
SELECT users.name, users.email, users.gender, addresses.city, addresses.state, addresses.street , addresses.id AS addresses__id
FROM users 
INNER JOIN addresses ON users.id = addresses.user_id;

-- 2.for Left Join
SELECT users.name, users.email, users.gender, addresses.city, addresses.state, addresses.street , addresses.id AS addresses__id
FROM users 
LEFT JOIN addresses ON users.id = addresses.user_id;
-- For Right Join
SELECT users.name, users.email, users.gender, addresses.city, addresses.state, addresses.street , addresses.id AS addresses__id
FROM users 
RIGHT JOIN addresses ON users.id = addresses.user_id;
