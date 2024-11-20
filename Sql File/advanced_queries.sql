use PROJECT_rev;
-- List of All Users with Their Booking History
SELECT 
    u.user_id,
    CONCAT(u.first_name, ' ', u.last_name) AS full_name,
    bh.history_id,
    bt.booking_id,
    r.route_name,
    r.from_location,
    r.to_location,
    bh.day AS booking_date,
    bh.time AS booking_time,
    po.payment_status
FROM 
    users u
JOIN 
    user_booking_history bh ON u.user_id = bh.user_id
JOIN 
    booking_tickets bt ON bh.booking_id = bt.booking_id
JOIN 
    routes r ON bt.route_id = r.route_id
JOIN 
    payment_option po ON bh.payment_id = po.payment_id
ORDER BY 
    bh.day DESC;
    
    
    
    -- Count Total Trips by Each Driver
    SELECT 
    d.driver_id,
    CONCAT(d.first_name, ' ', d.last_name) AS driver_name,
    COUNT(bt.trip_id) AS total_trips
FROM 
    drivers d
JOIN 
    booked_trips bt ON d.driver_id = bt.driver_id
GROUP BY 
    d.driver_id, driver_name
ORDER BY 
    total_trips DESC;
    
   -- List Buses with Average Feedback Ratings 
    SELECT 
    b.bus_id,
    b.reg_number AS bus_registration,
    COUNT(f.feedback_id) AS total_feedbacks,
    AVG(f.rating) AS avg_rating
FROM 
    buses b
LEFT JOIN 
    feedback f ON b.bus_id = f.bus_id
GROUP BY 
    b.bus_id, b.reg_number
ORDER BY 
    avg_rating DESC;
    
    
    
    -- Find Users with Pending or Failed Payments
    SELECT 
    u.user_id,
    CONCAT(u.first_name, ' ', u.last_name) AS full_name,
    po.payment_id,
    po.payment_status,
    po.payment_date
FROM 
    users u
JOIN 
    payment_option po ON u.user_id = po.payment_id
WHERE 
    po.payment_status IN ('pending', 'failed')
ORDER BY 
    po.payment_date DESC;
    
    
    -- Generate Cancellation Statistics by Route
    SELECT 
    r.route_id,
    r.route_name,
    COUNT(uc.cancellation_id) AS total_cancellations,
    SUM(bt.price) AS total_loss_revenue
FROM 
    routes r
JOIN 
    booking_tickets bt ON r.route_id = bt.route_id
JOIN 
    user_cancellations uc ON bt.booking_id = uc.booking_id
WHERE 
    uc.cancellation_status = 'Cancelled'
GROUP BY 
    r.route_id, r.route_name
ORDER BY 
    total_cancellations DESC;
    
    -- View Feedback with User and Driver Details
    SELECT 
    f.feedback_id,
    CONCAT(u.first_name, ' ', u.last_name) AS user_name,
    b.reg_number AS bus_registration,
    CONCAT(d.first_name, ' ', d.last_name) AS driver_name,
    f.rating,
    f.comments,
    f.feedback_date
FROM 
    feedback f
JOIN 
    users u ON f.user_id = u.user_id
JOIN 
    buses b ON f.bus_id = b.bus_id
JOIN 
    drivers d ON b.driver_id = d.driver_id
ORDER BY 
    f.feedback_date DESC;











  
 









