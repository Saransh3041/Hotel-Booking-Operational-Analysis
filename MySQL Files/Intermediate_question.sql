use hotel_booking
Ques-1 What is the cancellation rate for each hotel type?

SELECT 
    hotel,
    ROUND(COUNT(*) * 100 / (SELECT 
                    COUNT(*)
                FROM
                    hotel_bookings),
            2) AS canceled_rate
FROM
    hotel_bookings
GROUP BY hotel , is_canceled
HAVING is_canceled = 1


Ques-2 What is the average ADR per market segment?
SELECT 
    market_segment, ROUND(AVG(adr), 2) AS avg_adr
FROM
    hotel_bookings
GROUP BY market_segment

Ques-3 What is the relationship between lead time and cancellation rate?
select lead_time, cancellation_rate
SELECT 
    ROUND((AVG(lead_time * is_canceled) - AVG(lead_time) * AVG(is_canceled)) / (STDDEV_POP(lead_time) * STDDEV_POP(is_canceled)),
            2) AS correlation_value
FROM
    hotel_bookings;

Ques-4 Which distribution channel has the highest number of bookings?

SELECT 
    distribution_channel, COUNT(*) AS total_booking
FROM
    hotel_bookings
GROUP BY distribution_channel
ORDER BY total_booking DESC
LIMIT 1


Ques-5 What is the average number of previous cancellations by hotel type?
SELECT 
    hotel, round(AVG(previous_cancellations),2) AS previous_cancelation
FROM
    hotel_bookings
GROUP BY hotel

Ques-6 What is the trend of ADR over the years?
with year_adr as 
(select arrival_date_year, avg(adr) as adr from hotel_bookings group by arrival_date_year)
select arrival_date_year,adr, round((adr-(lag(adr) over(order by arrival_date_year)))/lag(adr) over(order by arrival_date_year),2)*100 as adr_trend from year_adr



Ques-7 Which month has the highest revenue?
SELECT 
    arrival_date_month, SUM(adr) AS revenue
FROM
    hotel_bookings
GROUP BY arrival_date_month
ORDER BY revenue DESC
LIMIT 1


Ques-8 What is the impact of special requests on ADR?
SELECT 
    ROUND(
        (
            AVG(total_of_special_requests * adr) 
            - AVG(total_of_special_requests) * AVG(adr)
        ) /
        (STDDEV_POP(total_of_special_requests) * STDDEV_POP(adr)),
        4
    ) AS correlation_value
FROM hotel_bookings
WHERE total_of_special_requests IS NOT NULL
  AND adr IS NOT NULL;

Ques-9 What is the average stay duration for repeated guests versus new guests?
SELECT 
    is_repeated_guest,
    ROUND(AVG(stays_in_weekend_nights + stays_in_week_nights),
            2) AS avg_stay_duration
FROM
    hotel_bookings
GROUP BY is_repeated_guest


Ques-10 Which room type has the highest number of bookings?
SELECT 
    reserved_room_type, COUNT(*) AS total_bookings
FROM
    hotel_bookings
GROUP BY reserved_room_type







