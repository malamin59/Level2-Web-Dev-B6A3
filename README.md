CREATE TABLE users (
  user_id SERIAL PRIMARY KEY,
  role VARCHAR(100) NOT NULL,
  name VARCHAR(100) NOT NULL,
  email VARCHAR(100) UNIQUE NOT NULL,
  password VARCHAR(100) NOT NULL,
  phone VARCHAR(100)
);


-- VEHICLES TABLE
CREATE TABLE vehicles (
vehicle_id SERIAL  PRIMARY KEY,
name VARCHAR(100) NOT NULL,
type VARCHAR(100) NOT NULL,
model VARCHAR(50),
registration_number VARCHAR(50) UNIQUE NOT NULL,
price_per_day DECIMAL(10,2) NOT NULL,
availability_status TEXT DEFAULT 'available'
);
alter table vehicles 
rename column name to vehicle_name

-- BOOKING TABLE

CREATE TABLE bookings (
booking_id SERIAL  PRIMARY KEY,
user_id INT NOT NULL,
vehicle_id INT NOT NULL,
start_date DATE NOT NULL,
end_date DATE NOT NULL,
booking_status TEXT DEFAULT 'pending', 
total_cost DECIMAL(10,2) NOT NULL,
FOREIGN KEY (user_id) REFERENCES users(user_id),
FOREIGN KEY (vehicle_id) REFERENCES vehicles(vehicle_id)
);


INSERT INTO users (role, name, email, password, phone) VALUES
('customer', 'Al Amin', 'alamin@gmail.com', '123456', '01700000001'),
('admin', 'Admin User', 'admin@gmail.com', 'admin123', '01700000002'),
('customer', 'Sadia', 'sadia@gmail.com', 'pass123', '01700000003'),
('customer', 'Rony', 'rony@gmail.com', 'rony123', '01700000004'),
('customer', 'Tania', 'tania@gmail.com', 'tania123', '01700000005'),
('customer', 'Hasan', 'hasan@gmail.com', 'hasan123', '01700000006'),
('customer', 'Mim', 'mim@gmail.com', 'mim123', '01700000007'),
('customer', 'Rifat', 'rifat@gmail.com', 'rifat123', '01700000008'),
('customer', 'Shuvo', 'shuvo@gmail.com', 'shuvo123', '01700000009'),
('customer', 'Lima', 'lima@gmail.com', 'lima123', '01700000010');

INSERT INTO vehicles (name, type, model, registration_number, price_per_day, availability_status) VALUES
('Toyota Corolla','car','2020','DHA-1234',3000.00,'available'),
('Honda CBR','bike','2019','BD-5678',1500.50,'rented'),
('Tata Ace','truck','2021','DHA-9999',4000.00,'maintenance'),
('Suzuki Alto','car','2018','BD-1111',2500.00,'available'),
('Yamaha R15','bike','2020','BD-2222',1800.00,'available'),
('Mercedes C200','car','2021','DHA-3333',7000.00,'rented'),
('Honda Activa','bike','2019','BD-4444',1200.00,'available'),
('Isuzu Truck','truck','2022','DHA-5555',5000.00,'available'),
('BMW X5','car','2022','DHA-6666',9000.00,'available'),
('KTM Duke','bike','2021','BD-7777',2000.00,'maintenance');




INSERT INTO bookings (user_id, vehicle_id, start_date, end_date, booking_status, total_cost) VALUES
(1,1,'2026-01-05','2026-01-07','confirmed',6000.00),
(3,2,'2026-01-08','2026-01-10','pending',3001.00),
(4,4,'2026-01-09','2026-01-12','completed',7500.00),
(5,5,'2026-01-11','2026-01-13','confirmed',3600.00),
(6,6,'2026-01-10','2026-01-15','cancelled',35000.00),
(7,7,'2026-01-12','2026-01-14','pending',2400.00),
(8,8,'2026-01-13','2026-01-16','confirmed',20000.00),
(9,9,'2026-01-14','2026-01-18','completed',36000.00),
(10,10,'2026-01-15','2026-01-17','confirmed',4000.00),
(2,3,'2026-01-16','2026-01-19','pending',12000.00);


-- 
SELECT users.name as customer_name , 
vehicles.vehicle_name FROM bookings
INNER JOIN users ON bookings.user_id = users.user_id
INNER JOIN vehicles
ON bookings.vehicle_id = vehicles.vehicle_id









----






