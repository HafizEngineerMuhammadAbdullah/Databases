USE startersql;

DELETE FROM users WHERE id = 4;
SELECT * FROM users;
SELECT * FROM addresses;
SELECT users.name, addresses.city, addresses.state, addresses.street
FROM users 
INNER JOIN addresses ON users.id = addresses.user_id;