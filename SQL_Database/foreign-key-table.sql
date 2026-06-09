USE startersql;
DROP TABLE IF EXISTS addresses;

CREATE TABLE addresses (
  id INT AUTO_INCREMENT PRIMARY KEY,
  user_id INT,
  street VARCHAR(225),
  city VARCHAR(50),
  state VARCHAR(50),
  pincode VARCHAR(10),
  CONSTRAINT fk_user FOREIGN KEY (user_id) REFERENCES users(id) ON DELETE CASCADE
);

INSERT INTO addresses (user_id, street, city, state, pincode)
VALUES
(1, 'House 12, Block A', 'Karachi', 'Sindh', '75300'),
(2, 'House 45, Block B', 'Lahore', 'Punjab', '54000'),
(3, 'Street 7, Sector G-8', 'Islamabad', 'ICT', '44000'),
(4, 'House 89, Gulshan', 'Karachi', 'Sindh', '75290'),
(5, 'Street 15, Johar Town', 'Lahore', 'Punjab', '54782'),
(6, 'House 34, University Road', 'Peshawar', 'KPK', '25000'),
(7, 'Street 22, Satellite Town', 'Rawalpindi', 'Punjab', '46000'),
(8, 'House 67, Model Town', 'Lahore', 'Punjab', '54700'),
(9, 'Street 5, Clifton', 'Karachi', 'Sindh', '75600'),
(10, 'House 101, DHA Phase 2', 'Karachi', 'Sindh', '75500'),

(11, 'Street 8, Gulberg', 'Lahore', 'Punjab', '54660'),
(12, 'House 23, F-10', 'Islamabad', 'ICT', '44010'),
(13, 'Street 19, Saddar', 'Hyderabad', 'Sindh', '71000'),
(14, 'House 78, Cantt', 'Multan', 'Punjab', '60000'),
(15, 'Street 3, Hayatabad', 'Peshawar', 'KPK', '25100'),
(16, 'House 56, Bahria Town', 'Rawalpindi', 'Punjab', '46220'),
(17, 'Street 11, DHA', 'Lahore', 'Punjab', '54810'),
(18, 'House 88, North Nazimabad', 'Karachi', 'Sindh', '74700'),
(19, 'Street 29, Peoples Colony', 'Faisalabad', 'Punjab', '38000'),
(20, 'House 14, Civil Lines', 'Gujranwala', 'Punjab', '52250'),

(21, 'Street 10, Defence Road', 'Sialkot', 'Punjab', '51310'),
(22, 'House 66, Gulistan-e-Jauhar', 'Karachi', 'Sindh', '75280'),
(23, 'Street 4, Shalimar Town', 'Lahore', 'Punjab', '54020'),
(24, 'House 92, Airport Road', 'Quetta', 'Balochistan', '87300'),
(25, 'Street 18, Scheme 33', 'Karachi', 'Sindh', '75340'),
(26, 'House 39, Wapda Town', 'Lahore', 'Punjab', '54770'),
(27, 'Street 13, G-11', 'Islamabad', 'ICT', '44020'),
(28, 'House 51, Latifabad', 'Hyderabad', 'Sindh', '71800'),
(29, 'Street 6, Madina Town', 'Faisalabad', 'Punjab', '38070'),
(30, 'House 73, DHA Phase 5', 'Karachi', 'Sindh', '75510');

