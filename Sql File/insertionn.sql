use PROJECT_rev;

INSERT INTO users (first_name, last_name, email, password) VALUES
('John', 'mutuku', 'johnmutuku@gmail.com', 'rt455'),
('Jane', 'Maina', 'janemaina@gmail.com', 'hidfghjkl'),
('George', 'Simon', 'georgesimon@gmail.com', 'sdfghjkl'),
('Mary', 'Kenga', 'marykenga@gmail.com', 'asdfgh'),
('Chris', 'Njunguna', 'chrisnjugu@gmail.com', 'vbnm'),
('Patricia', 'Mwende', 'patriciamwende@gmail.com', '83456jl'),
('Michael', 'Odieng', 'michaelodieng@gmail.com', 'zxcvb'),
('Sarah', 'Otieno', 'sarahotieno@gmail.com', 'mkio98'),
('David', 'Malonza', 'davidmalonza@gmail.com', '4rtyui'),
('Linda', 'mary', 'lindamarya@gmail.com', 'wertyui9');


INSERT INTO drivers (national_id, first_name, last_name, phone_number, email) VALUES
('12345678901', 'Joseph', 'Karanja', '0712345678', 'joseph.karanja@bus.com'),
('23456789012', 'Amina', 'Mohamed', '0723456789', 'amina.mohamed@bus.com'),
('34567890123', 'Abdi', 'Omar', '0734567890', 'abdi.omar@bus.com'),
('45678901234', 'Kimani', 'Mwangi', '0745678901', 'kimani.mwangi@bus.com'),
('56789012345', 'Musa', 'Ali', '0756789012', 'musa.ali@bus.com'),
('67890123456', 'Nia', 'Njoroge', '0767890123', 'nia.njoroge@bus.com'),
('78901234567', 'Samuel', 'Wangui', '0778901234', 'samuel.wangui@bus.com'),
('89012345678', 'Emily', 'Kiplangat', '0789012345', 'emily.kiplangat@bus.com'),
('90123456789', 'Abigail', 'Ochieng', '0790123456', 'abigail.ochieng@bus.com'),
('01234567890', 'Eric', 'Mutua', '0801234567', 'eric.mutua@bus.com');


INSERT INTO buses (reg_number, max_passengers, driver_id) VALUES
('KBG 123X', 50, 1),
('KBS 456Y', 40, 2),
('KBT 789Z', 60, 3),
('KBU 012A', 55, 4),
('KBC 345B', 45, 5),
('KBD 678C', 50, 6),
('KBE 901D', 40, 7),
('KBF 234E', 60, 8),
('KBG 567F', 45, 9),
('KBH 890G', 55, 10);


INSERT INTO routes (bus_id, from_location, to_location, max_passengers, route_name, route_cost) VALUES
(1, 'Nairobi', 'Mombasa', 50, 'Nairobi-Mombasa Express', 1500.00),
(2, 'Nairobi', 'Kisumu', 40, 'Nairobi-Kisumu Highway', 1200.00),
(3, 'Mombasa', 'Nairobi', 60, 'Mombasa-Nairobi Direct', 1600.00),
(4, 'Nairobi', 'Kisii', 55, 'Nairobi-Kisii Route', 1000.00),
(5, 'Nairobi', 'Eldoret', 45, 'Nairobi-Eldoret Connection', 1300.00),
(6, 'Mombasa', 'Kisumu', 50, 'Mombasa-Kisumu Link', 1250.00),
(7, 'Nairobi', 'Nyeri', 40, 'Nairobi-Nyeri', 800.00),
(8, 'Mombasa', 'Kakamega', 60, 'Mombasa-Kakamega Road', 1450.00),
(9, 'Kisumu', 'Nairobi', 45, 'Kisumu-Nairobi Express', 1100.00),
(10, 'Eldoret', 'Nairobi', 55, 'Eldoret-Nairobi Route', 1350.00);


INSERT INTO booking_tickets (user_id, route_id, date, time, price, seat_number) VALUES
(1, 1, '2024-11-19', '10:00:00', 1500.00, 'A1'),
(2, 2, '2024-11-19', '11:00:00', 1200.00, 'B1'),
(3, 3, '2024-11-19', '12:00:00', 1600.00, 'C1'),
(4, 4, '2024-11-19', '13:00:00', 1000.00, 'D1'),
(5, 5, '2024-11-19', '14:00:00', 1300.00, 'E1'),
(6, 6, '2024-11-19', '15:00:00', 1250.00, 'F1'),
(7, 7, '2024-11-19', '16:00:00', 800.00, 'G1'),
(8, 8, '2024-11-19', '17:00:00', 1400.00, 'H1'),
(9, 9, '2024-11-19', '18:00:00', 1100.00, 'I1'),
(10, 10, '2024-11-19', '19:00:00', 1350.00, 'J1');



INSERT INTO payment_option (first_name, last_name, booking_id, payment_date, payment_status, mpesa_receipt_no, MerchantRequestID, CheckoutRequestID) VALUES
('John', 'Mutuku', 1, '2024-11-19 10:05:00', 'confirmed', 'MPESA123456', 'MR123', 'CR123'),
('Jane', 'Maina', 2, '2024-11-19 11:05:00', 'confirmed', 'MPESA123457', 'MR124', 'CR124'),
('George', 'Simon', 3, '2024-11-19 12:05:00', 'confirmed', 'MPESA123458', 'MR125', 'CR125'),
('Mary', 'Kenga', 4, '2024-11-19 13:05:00', 'confirmed', 'MPESA123459', 'MR126', 'CR126'),
('Chris', 'Njunguna', 5, '2024-11-19 14:05:00', 'confirmed', 'MPESA123460', 'MR127', 'CR127'),
('Patricia', 'Mwende', 6, '2024-11-19 15:05:00', 'confirmed', 'MPESA123461', 'MR128', 'CR128'),
('Michael', 'Odieng', 7, '2024-11-19 16:05:00', 'confirmed', 'MPESA123462', 'MR129', 'CR129'),
('Sarah', 'Otieno', 8, '2024-11-19 17:05:00', 'confirmed', 'MPESA123463', 'MR130', 'CR130'),
('David', 'Malonza', 9, '2024-11-19 18:05:00', 'confirmed', 'MPESA123464', 'MR131', 'CR131'),
('Linda', 'Mary', 10, '2024-11-19 19:05:00', 'confirmed', 'MPESA123465', 'MR132', 'CR132');


INSERT INTO user_booking_history (user_id, booking_id, day, time, payment_id) VALUES
(1, 1, '2024-11-19', '10:00:00', 1),
(2, 2, '2024-11-19', '11:00:00', 2),
(3, 3, '2024-11-19', '12:00:00', 3),
(4, 4, '2024-11-19', '13:00:00', 4),
(5, 5, '2024-11-19', '14:00:00', 5),
(6, 6, '2024-11-19', '15:00:00', 6),
(7, 7, '2024-11-19', '16:00:00', 7),
(8, 8, '2024-11-19', '17:00:00', 8),
(9, 9, '2024-11-19', '18:00:00', 9),
(10, 10, '2024-11-19', '19:00:00', 10);



INSERT INTO user_cancellations (user_id, booking_id, cancellation_date, cancellation_time, payment_id, cancellation_status) VALUES
(1, 1, '2024-11-20', '10:00:00', 1, 'Cancelled'),
(2, 2, '2024-11-20', '11:00:00', 2, 'Pending'),
(3, 3, '2024-11-20', '12:00:00', 3, 'Cancelled'),
(4, 4, '2024-11-20', '13:00:00', 4, 'Pending'),
(5, 5, '2024-11-20', '14:00:00', 5, 'Cancelled'),
(6, 6, '2024-11-20', '15:00:00', 6, 'Pending'),
(7, 7, '2024-11-20', '16:00:00', 7, 'Cancelled'),
(8, 8, '2024-11-20', '17:00:00', 8, 'Pending'),
(9, 9, '2024-11-20', '18:00:00', 9, 'Cancelled'),
(10, 10, '2024-11-20', '19:00:00', 10, 'Pending');


INSERT INTO booked_trips (user_id, route_id, bus_id, driver_id, trip_date, trip_time) VALUES
(1, 1, 1, 1, '2024-11-19', '10:00:00'),
(2, 2, 2, 2, '2024-11-19', '11:00:00'),
(3, 3, 3, 3, '2024-11-19', '12:00:00'),
(4, 4, 4, 4, '2024-11-19', '13:00:00'),
(5, 5, 5, 5, '2024-11-19', '14:00:00'),
(6, 6, 6, 6, '2024-11-19', '15:00:00'),
(7, 7, 7, 7, '2024-11-19', '16:00:00'),
(8, 8, 8, 8, '2024-11-19', '17:00:00'),
(9, 9, 9, 9, '2024-11-19', '18:00:00'),
(10, 10, 10, 10, '2024-11-19', '19:00:00');


INSERT INTO admin (first_name,last_name, email, password) VALUES
('Kennedy','Musyoka', 'kenmusyoka5678@gmail.com', 'aertyu654432');



INSERT INTO seat_reservations (booking_id, seat_number) VALUES
(1, 'A1'),
(2, 'B1'),
(3, 'C1'),
(4, 'D1'),
(5, 'E1'),
(6, 'F1'),
(7, 'G1'),
(8, 'H1'),
(9, 'I1'),
(10, 'J1');


INSERT INTO audit_logs (action_type, user_id, action_details) VALUES
('booking', 1, 'Booked a ticket for Nairobi-Mombasa Express'),
('payment', 1, 'Payment completed for Nairobi-Mombasa Express'),
('cancellation', 1, 'Cancelled booking for Nairobi-Mombasa Express'),
('booking', 2, 'Booked a ticket for Nairobi-Kisumu Highway'),
('payment', 2, 'Payment completed for Nairobi-Kisumu Highway'),
('cancellation', 2, 'Cancelled booking for Nairobi-Kisumu Highway'),
('update', 3, 'Updated booking for Mombasa-Nairobi Direct'),
('login', 4, 'Logged in to the system'),
('logout', 4, 'Logged out of the system');



INSERT INTO feedback (user_id, bus_id, rating, comments, feedback_date) VALUES
(1, 1, 5, 'Great trip, very comfortable.', '2024-11-19 10:30:00'),
(2, 2, 4, 'Good service, but could improve timing.', '2024-11-19 11:30:00'),
(3, 3, 5, 'Excellent trip, enjoyed the ride!', '2024-11-19 12:30:00'),
(4, 4, 3, 'Decent trip, but the bus was a bit delayed.', '2024-11-19 13:30:00'),
(5, 5, 5, 'Very smooth and comfortable journey.', '2024-11-19 14:30:00'),
(6, 6, 4, 'Good trip, though the bus could have been cleaner.', '2024-11-19 15:30:00'),
(7, 7, 5, 'Fantastic ride, highly recommend!', '2024-11-19 16:30:00'),
(8, 8, 3, 'The trip was okay, but seating arrangements were poor.', '2024-11-19 17:30:00'),
(9, 9, 5, 'Great service, will book again!', '2024-11-19 18:30:00'),
(10, 10, 4, 'Good trip, though the bus could have had more legroom.', '2024-11-19 19:30:00');
