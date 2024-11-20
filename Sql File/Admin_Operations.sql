use PROJECT_rev;

-- ADMIN SIDE FUNCTIONALITIES
/*
Main Operations
*/
delete from users 
where user_id=11;

-- Add a new bus
INSERT INTO buses (reg_number, max_passengers, driver_id)
VALUES ('KBC456k', 50, 2);

-- Update existing bus information
UPDATE buses
SET max_passengers = 60
WHERE bus_id = 1;


-- Add a new driver
INSERT INTO drivers (national_id, first_name, last_name, phone_number, email)
VALUES ('12345678', 'Alice', 'Brown', '0712345678', 'alice.brown@example.com');

-- Update driver details
UPDATE drivers
SET phone_number = '0723456789'
WHERE driver_id = 1;

-- View Booked Trips
SELECT bt.trip_id, u.first_name, u.last_name, r.route_name, b.reg_number, d.first_name AS driver_name, bt.trip_date, bt.trip_time
FROM booked_trips bt
JOIN users u ON bt.user_id = u.user_id
JOIN routes r ON bt.route_id = r.route_id
JOIN buses b ON bt.bus_id = b.bus_id
JOIN drivers d ON bt.driver_id = d.driver_id;




-- View all payments
SELECT p.payment_id, p.first_name, p.last_name, p.booking_id, p.payment_status, p.payment_date
FROM payment_option p;

-- View and Respond to User Feedbacks
SELECT f.feedback_id, u.first_name, u.last_name, b.reg_number, f.rating, f.comments, f.feedback_date
FROM feedback f
JOIN users u ON f.user_id = u.user_id
JOIN buses b ON f.bus_id = b.bus_id;

-- Audit System Logs
SELECT log_id, action_type, user_id, action_details, timestamp
FROM audit_logs
ORDER BY timestamp DESC;


/*
Other Operations
*/

-- Cancel Booking
-- Mark a booking as cancelled
INSERT INTO user_cancellations (user_id, booking_id, cancellation_date, cancellation_time, payment_id, cancellation_status)
VALUES (1, 123, CURDATE(), CURTIME(), 10, 'Cancelled');
-- Update payment status
UPDATE payment_option
SET payment_status = 'pending'
WHERE payment_id = 10;

--  View Available Routes
SELECT r.route_id, r.route_name, r.from_location, r.to_location, r.route_cost, b.reg_number
FROM routes r
JOIN buses b ON r.bus_id = b.bus_id;

--  Register New Admin
INSERT INTO admin (first_name,last_name, email, password)
VALUES ('Irene','Kilunda', 'ireene08@gmail.com', 'rtyui8');
select * from admin;

-- Assign Drivers to Buses
UPDATE buses
SET driver_id = 2
WHERE bus_id = 1;

-- Monitor Bus Ratings
-- Calculate average ratings for each bus
SELECT b.reg_number, AVG(f.rating) AS avg_rating
FROM feedback f
JOIN buses b ON f.bus_id = b.bus_id
GROUP BY b.bus_id
ORDER BY avg_rating DESC;


-- View and Respond to User Feedbacks
SELECT f.feedback_id, u.first_name, u.last_name, b.reg_number, f.rating, f.comments, f.feedback_date
FROM feedback f
JOIN users u ON f.user_id = u.user_id
JOIN buses b ON f.bus_id = b.bus_id;

-- Cancel Booking
-- Mark a booking as cancelled
INSERT INTO user_cancellations (user_id, booking_id, cancellation_date, cancellation_time, payment_id, cancellation_status)
VALUES (1, 123, CURDATE(), CURTIME(), 10, 'Cancelled');
-- Update payment status
UPDATE payment_option
SET payment_status = 'pending'
WHERE payment_id = 10;

--  View Available Routes
SELECT r.route_id, r.route_name, r.from_location, r.to_location, r.route_cost, b.reg_number
FROM routes r
JOIN buses b ON r.bus_id = b.bus_id;

-- Monitor Bus Ratings
-- Calculate average ratings for each bus
SELECT b.reg_number, AVG(f.rating) AS avg_rating
FROM feedback f
JOIN buses b ON f.bus_id = b.bus_id
GROUP BY b.bus_id
ORDER BY avg_rating DESC;
-- Cancel a Booking
-- Check if the booking exists and is valid
SELECT bt.booking_id, bt.user_id, bt.date, bt.price
FROM booking_tickets bt
WHERE bt.booking_id = 123 AND bt.user_id = 1;
-- Record the cancellation
INSERT INTO user_cancellations (user_id, booking_id, cancellation_date, cancellation_time, payment_id, cancellation_status)
SELECT 
    1 AS user_id, 
    123 AS booking_id, 
    CURDATE() AS cancellation_date, 
    CURTIME() AS cancellation_time, 
    po.payment_id, 
    'Cancelled' AS cancellation_status
FROM payment_option po
WHERE po.booking_id = 123;
select * from user_cancellations;






























