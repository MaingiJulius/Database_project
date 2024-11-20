use PROJECT_rev;

-- USER SIDE
/*
Main System Transaction
*/

-- Register
INSERT INTO users (first_name, last_name, email, password)
VALUES ('Lucy', 'Chepkemoi', 'lucychepkemoi@gmail.com', 'rtyuio');

-- Login
SELECT * FROM users
WHERE email = 'lucychepkemoi@gmail.com' AND password = 'rtyuio';

-- Reset Password
UPDATE users
SET password = 'fghjkl3'
WHERE email = 'lucychepkemoi@gmail.com';

-- Insert a reservation for Booking ID 1, Seat A2
INSERT INTO seat_reservations (booking_id, seat_number)
VALUES (2, 'A4');

-- Enter Passsenger(s) Details
INSERT INTO booking_tickets (user_id, route_id, date, time, price, seat_number)
VALUES (1, 1, '2024-11-20', '10:00:00', 1000.00, 'A2');

-- Pay For The Selected seats to be Booked
INSERT INTO payment_option (first_name, last_name, booking_id, payment_date, payment_status, mpesa_receipt_no)
VALUES ('Sharon', 'Chepkorir', 1, NOW(), 'confirmed', 'MPESA12345');

/*
Other User System Functionalities
*/

-- Edit User Profile
UPDATE users
SET first_name = 'Linda', last_name = 'mary', email = 'lindamarya@gmail.com'
WHERE user_id = 10;

-- Insert user feedback
INSERT INTO feedback (user_id, bus_id, rating, comments, feedback_date)
VALUES (1, 3, 5, 'The ride was very smooth, and the driver was professional.', NOW());


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

-- Search Bus
SELECT r.route_id, r.route_name, r.from_location, r.to_location, r.route_cost, b.reg_number
FROM routes r
JOIN buses b ON r.bus_id = b.bus_id
WHERE r.from_location = 'Nairobi' AND r.to_location = 'Mombasa';


-- Select Seat On the Bus Found
-- Check available seats on the selected route If no rows are returned, the seat is available.
SELECT sr.seat_number
FROM seat_reservations sr
JOIN booking_tickets bt ON sr.booking_id = bt.booking_id
WHERE bt.route_id = 1 
  AND sr.seat_number = 'A2';
  
   -- Print Ticket
SELECT bt.booking_id, u.first_name, u.last_name, r.route_name, r.from_location, r.to_location, r.route_cost, sr.seat_number
FROM booking_tickets bt
JOIN users u ON bt.user_id = u.user_id
JOIN routes r ON bt.route_id = r.route_id
JOIN seat_reservations sr ON bt.booking_id = sr.booking_id
WHERE bt.booking_id = 10;


-- View Booking History
SELECT bh.history_id, r.route_name, bh.day, bh.time, p.payment_status
FROM user_booking_history bh
JOIN booking_tickets bt ON bh.booking_id = bt.booking_id
JOIN routes r ON bt.route_id = r.route_id
JOIN payment_option p ON bh.payment_id = p.payment_id
WHERE bh.user_id = 1;

-- View Booked Trips
SELECT bt.trip_id, u.first_name, u.last_name, r.route_name, b.reg_number, d.first_name AS driver_name, bt.trip_date, bt.trip_time
FROM booked_trips bt
JOIN users u ON bt.user_id = u.user_id
JOIN routes r ON bt.route_id = r.route_id
JOIN buses b ON bt.bus_id = b.bus_id
JOIN drivers d ON bt.driver_id = d.driver_id;

  

