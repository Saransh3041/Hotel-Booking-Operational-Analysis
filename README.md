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
| **Internal**         | **External**       |
|-----------------------|--------------------|
| - Management Team     | - Guest            |
| - Operation Team      | - Travel Agencies  |
| - Marketing Team      | - Suppliers        |
| - Customer Service Team |                    |

## Data Cleaning & Transformation
Steps that has followed in data transformation are:
- Handled null and missing values in columns like country, customer_type and market_segemnt.
- Checked and removed the duplicate bookings made in same time.
- Update the date column into a proper datetime foramt. 
- Created the seperate column for arrival_year and month.
- Created metrics for analysis like: cancelation_rate, total_revenue and room_occupancy
- Grouped the data by hotel,customer_type and room_type.
  
## Exploratry Data Analysis(EDA) 
The analysis was conducted in sql using MySQL workbench software.Here are the some key analysis that has performed:
- Identify peak booking periods and adjust marketing strategies accordingly.
- Analysed and compared the repeated and new guest behavior.
- Identified the peak revenue trend and how it impacted by lead_time, customer_type and maeket_segment
- Established the relationship between lead_time hotel_type and cancelled_order.
- Optimized the guest service by analysing room_type demands, guest behavior and number of special request.

## Key Highlights
1. **Booking Season-** Most of the guest prefered to arrive into mid season (April-May) as hotel are fully occupied.
2. **Fulillment-** 95% of total hotel bookings are fulfilled through agent.
3. **Booking Partners-** Online and offlne travel agency are among the top booking partners as they collectively hold 62% of total_bookings.
4. **Customer Demographic-** Most of the customer (around 80%) choose price over convinence, opted basic meal package and generated low adr.
5. **Guest Behavior-** Guest shows disatisfaction toward hotel hospitaplity and managemnet, rooms were not alloted properly and their booking confirmation is also low
6. **Cancelation Rate-** Almost Half of bookings were cancelled before arrival.
   
## Strategic Recomendations
1. Introduce dynamic pricing and early-bird offers during April–May to maximize revenue while managing over-occupancy.
2. Reduce dependency on agents (95% share) by strengthening direct booking platforms and offering loyalty rewards for direct customers.
3. Strengthen Partnerships with OTAs & Offline Agencies Since they contribute 62% of bookings.
4. Address dissatisfaction by improving room allocation systems, staff training, and transparent booking confirmations to build trust.
5. Implement flexible booking policies, pre-arrival engagement (emails, reminders), and targeted offers to minimize the cancellation.

## Conclusion
This analysis highlights critical operational challenges in hotel bookings, including high agent dependency, seasonal demand peaks, guest dissatisfaction, and elevated cancellation rates. By implementing strategic measures such as diversifying booking channels, improving hospitality standards, and optimizing mid-season pricing, hotels can enhance customer experience and reduce the cancellations. 

## Autor
Saransh Goyal Email: goyalsaransh61@gmail.com
LinkedIn: linkedin.com/in/saranshgoyal007
GitHub: github.com/Saransh3041











