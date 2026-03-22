use hotel_booking

Ques-1 What is the average lead time for bookings?
SELECT 
    round(AVG(lead_time),2) as avg_lead_time
FROM
    hotel_bookings

Ques-2 What is the distribution of bookings by hotel type?
SELECT 
    hotel, COUNT(*) AS total_bookings
FROM
    hotel_bookings
GROUP BY hotel

Ques-3 How many bookings were canceled?
SELECT 
    COUNT(*) AS canceled_booking
FROM
    hotel_bookings
WHERE
    is_canceled = 1


Ques-4 What is the most common arrival month for bookings?
SELECT 
    arrival_date_month AS arrival_month,
    COUNT(*) AS total_bookings
FROM
    hotel_bookings
GROUP BY arrival_date_month
ORDER BY total_bookings DESC
LIMIT 1

Ques-5 What is the average number of special requests per booking?
SELECT 
    ROUND(AVG(total_of_special_requests), 2) AS average_special_request
FROM
    hotel_bookings
    
    
Ques-6 Which country has the highest number of bookings?
SELECT 
    country AS Highest_booking_country,
    COUNT(*) AS total_booking
FROM
    hotel_bookings
GROUP BY country
ORDER BY total_booking DESC
LIMIT 1

Ques-7 What is the average daily rate (ADR) for each hotel type?
SELECT 
    hotel, ROUND(AVG(adr), 2) AS average_room_rate
FROM
    hotel_bookings
GROUP BY hotel



Ques-8 What percentage of guests required car parking spaces?
with car_parking_request_count as 
(select count(*) as total_car_parking_guest 
from hotel_bookings where required_car_parking_spaces>=1)
select (total_car_parking_guest*100/(select Count(*) 
from hotel_bookings)) as parking_request_percent 
from car_parking_request_count


Ques-9 What is the average stay duration in week nights and weekend nights?
SELECT 
    ROUND(AVG(stays_in_week_nights), 2) AS week_day_stay,
    ROUND(AVG(stays_in_weekend_nights), 2) AS week_end_stay
FROM
    hotel_bookings


Ques-10 How many bookings were made through travel agents?

SELECT 
    COUNT(*) AS bookings_by_travel_agent
FROM
    hotel_bookings
WHERE
    agent <> 'No_Agent'




    
    
    

