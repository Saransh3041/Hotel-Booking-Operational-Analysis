# Hotel Harmony: Data Insights for Optimized Operations
## Project Overview  
**Company:** Elite Hotels International  
**Industry:** Hospitality  
**Scenario:**  
Elite Hotels International operates multiple properties across diverse regions and is facing challenges in managing booking patterns, cancellations, and customer satisfaction.  This project applies data-driven analysis to identify key trends in hotel bookings, cancellations, and guest preferences to support operational optimization and strategic decision-making.

**Objective:**  
To analyze hotel booking data to derive insights that can help optimize operations, enhance guest experiences, and improve overall revenue performance.

#### **For More Info.**

## Problem Statement
**Problem:** 
Elite Hotels International needs to optimize its booking patterns and enhance customer satisfaction to maintain a competitive edge in the hospitality industry.

**Importance:** Solving this problem will help in:
- Improving operational efficiency.
- Enhancing guest satisfaction and loyalty.
- Increasing revenue through better resource allocation and marketing strategies.

## Dataset Information  
**Source:** [Hotel Booking Demand Dataset – Kaggle](https://www.kaggle.com/jessemostipak/hotel-booking-demand)
| Column | Description |
|--------|-------------|
| hotel | Name of the hotel (Resort Hotel or City Hotel) |
| is_canceled | 1 = booking canceled, 0 = not canceled |
| lead_time | Days between booking and arrival |
| arrival_date_year | Year of arrival |
| arrival_date_month | Month of arrival |
| stays_in_weekend_nights | Weekend nights stayed |
| stays_in_week_nights | Weeknights stayed |
| adults | Number of adults |
| children | Number of children |
| babies | Number of babies |
| meal | Type of meal booked |
| country | Country of origin |
| market_segment | Market segment designation |
| distribution_channel | Channel through which booking was made |
| is_repeated_guest | 1 = repeated guest, 0 = new guest |
| previous_cancellations | Count of previous cancellations |
| previous_bookings_not_canceled | Previous successful bookings |
| reserved_room_type | Reserved room type code |
| assigned_room_type | Room type assigned |
| booking_changes | Number of booking changes |
| deposit_type | Deposit type (No Deposit / Non Refund / Refundable) |
| agent | Travel agency ID |
| company | Company ID |
| days_in_waiting_list | Days booking waited for confirmation |
| customer_type | Type of customer (Transient, Contract, Group, etc.) |
| adr | Average Daily Rate |
| required_car_parking_spaces | Number of parking spaces required |
| total_of_special_requests | Number of special requests |
| reservation_status | Final reservation status (Canceled, Checked-Out, No-Show) |
| reservation_status_date | Date of the last reservation status update |


## Project Stakeholders
1.**Internal** 
- Management Team
- Operation Team
- Marketing Team
- Customer Service Team
2.**External**
- Guest
- Travel Agencies
- Suppliers

## Data Cleaning $ Transformation
Steps that has followed in data transformation are:
- Handled null and missing values in columns like country, customer_type and market_segemnt.
- Checked and removed the duplicate bookings made in same time.
- Update the date column into a proper datetime foramt. 
- Created the seperate column for arrival_year and month.
- Created metrics for analysis like: cancelation_rate, total_revenue and room_occupancy
- Grouped the data by hotel,customer_type and room_type.
  
## Exploratry Data Analysis(EDA) 
The analysis was conducted in sql using MySQL workbench software.Here are the key analysis that performed:
- Identify peak booking periods and adjust marketing strategies accordingly.
- Analysed and compared the repeated and new guest behavior.
- Identified the peak revenue trend and how it impacted by lead_time, customer_type and maeket_segment
- Established the relationship between lead_time hotel_type and cancelled_order.
- Optimized the guest service by analysing room_type demands, guest behavior and number of special request.















