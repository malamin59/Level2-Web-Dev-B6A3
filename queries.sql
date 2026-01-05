SELECT users.name as customer_name , 
vehicles.vehicle_name FROM bookings
INNER JOIN users ON bookings.user_id = users.user_id
INNER JOIN vehicles
ON bookings.vehicle_id = vehicles.vehicle_id

SELECT *
FROM vehicles v
WHERE NOT EXISTS (
    SELECT 1 
    FROM bookings b
    WHERE b.vehicle_id = v.vehicle_id
);

  
SELECT * FROM vehicles WHERE 
availability_status  =  'available'
AND type  = 'car'


SELECT 
    v.vehicle_name,
    COUNT(b.booking_id) AS total_bookings
FROM bookings b
INNER JOIN vehicles v
    ON b.vehicle_id = v.vehicle_id
GROUP BY v.vehicle_name
HAVING COUNT(b.booking_id) > 2;