use hotel_booking

Ques-1 What factors significantly impact the cancellation rate?

select customer_type,is_canceled,(bookings/Sum_of_booking)*100 as Cancelation_rate from
(select customer_type,is_canceled,bookings, (sum(bookings) over(partition by customer_type)) as Sum_of_booking from
(select customer_type ,is_canceled, count(*) as bookings from hotel_bookings  group by customer_type, is_canceled) AS base13 ) as base14 where is_canceled=1

Ques-2 How does the ADR vary with the number of adults, children, and babies?
SELECT 
    adults,
    children,
    babies,
    ROUND(AVG(adr), 2) AS avg_adr,
    COUNT(*) AS total_bookings
FROM hotel_bookings
GROUP BY adults, children, babies
ORDER BY adults, children, babies;

Ques-3 What is the impact of booking changes on guest satisfaction as indicated by special requests?

SELECT 
    ROUND(
        (
            AVG(booking_changes * total_of_special_requests)
            - AVG(booking_changes) * AVG(total_of_special_requests)
        ) /
        (
            STDDEV_POP(booking_changes) * STDDEV_POP(total_of_special_requests)
        ),
        4
    ) AS correlation_value
FROM hotel_bookings
WHERE booking_changes IS NOT NULL
  AND total_of_special_requests IS NOT NULL;


Ques-4 What is the seasonal impact on booking cancellations?
select arrival_date_month, count(is_canceled) as canceled_booking from hotel_bookings where is_canceled=0 group by arrival_date_month

Ques- 5 How does the booking lead time distribution vary between different market segments?
select market_segment, avg(lead_time) from hotel_bookings group by market_segment











