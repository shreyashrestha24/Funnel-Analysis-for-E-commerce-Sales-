# Funnel Analysis for E-commerce Sales 💰 💰 💰 

### Project Overview 

Today we will be conducting a funnel analysis of e-commerce user behavior, tracking how visitors progress from landing on the home page, to product viewing, to adding products to their cart, and finally to completing a successful purchase. Throughout this funnel, customers may exit the journey at a certain stage, resulting in missed revenue opportunities.

The goal of this project is to identify where the largest drop-offs occur in the conversion funnel, and investigate why they might occur. Furthermore, we dig deeper into which customer groups are most at risk of churn, by comparing funnel conversion rates between mobile vs desktop users, customers from different counties, and differing referral sources.

By identifying where and what type of users drop off, we can propose data-driven strategies to improve flow efficiency, customer retention and overall sales performance.

<img width="600" height="315" alt="image" src="https://github.com/user-attachments/assets/564615ce-f14e-4b9e-b7df-582b44830d72" />

### Executive Summary 

This analysis evaluates user progression across funnel stages, quantifies conversion rates, and highlights customer groups with the highest churn.

Based on the analysis, the following strategies are suggested to reduce improve flow efficiency, conversions, to reduce customer churn at each stage, and increase sales:
1. 

2.

3.

### E-commerce Dataset

The Dataset was obtained from Kaggle and can be found this link (https://www.kaggle.com/datasets/sufya6/e-commerce-customer-journey-click-to-conversion) for your own analysis. 

The dataset has the following format:
<img width="856" height="97" alt="image" src="https://github.com/user-attachments/assets/24b0ba20-19b1-4cba-8b92-dfb0bfb943e0" />


| Dataset Column| Defintion     |
| -------------   | ------------- |
| SessionID  | A unique identifier for each session a customer initiates  |
| UserID    | A unique identifier for each customer  |
| Timestamp | Date and time customer has viewed the page |
| PageType  | Type of page customer is visiting in the Funnel  |
| DeviceType | Device that customer is using  |
| Country	  | Customer's country  |
| ReferralSource | Way that customer was referred to e-commerce site  |
| TimeOnPage_seconds | Time spent on each page in the funnel measured in seconds  |
| ItemsInCart | Frequency of items in a users cart per unique session  |
| Purchased  | Frequency of items that were successfully purchased  |

### Tools

Analysis for this project was conducted using SQL via DB Browser for SQLite. Visualisations were created in Excel. 

### Methodology 

Firstly, the Kaggle dataset was downloaded as a .csv and loaded into Excel for initial inspection.
Secondly, the dataset was loaded into DB Brower and appropriate SQL queries were created based on the analysis questions. 

The first query was written to calculate the raw number of customers at each step along with the conversion percentages between each step. The query is comprised of CTEs, subqueries, and can be found in this repository. 

Following this, queries were written to perform additional segmentation steps to investigate how different customer groups (DeviceType, Country, ReferralSource) behave.

The query results were loaded into Excel, and appropriate visualisations (Funnel charts, Clustered bar chart) were created.

### User Funnel Journey

The customer journey funnel consists of 5 stages:

  1. Visited Home Page: Users who landed on the Home Page, perhaps through search engines, advertisements, referrals. This represents the total initial traffic entering the funnel.

  2. Viewed Product: Users who clicked on at least one product. This represents initial browsing interest.

  3. Added to Cart: Users that have added products to their cart. This represents buying intent.

  4. Checkout: Users who have moved to checkout, and initiated with the paying process (Entering personal, shipping, card details)

  5. Purchase Confirmed: Users who have completed a successful purchase and received a order confirmation. This represents the final stage of the funnel.

### Preliminary Results (Before Segmentation)

Raw User Counts Shows the number of users who reached each step of the funnel, while the conversion rates at each stage (%) shows the conversion percentage between each stage.

<img width="417" height="245" alt="image" src="https://github.com/user-attachments/assets/345a1168-dcc4-4c51-8a1a-02cc4f590a63" />  <img width="402" height="244" alt="image" src="https://github.com/user-attachments/assets/b947c942-ab50-411e-b4e2-4774efc254a8" />

The raw user counts funnel shows a significant decrease in customers from the cart to checkout stage, with a conversion rate of 54.56%. The other conversions have a relatively high conversion efficiency at rates 88% and above. 

To investigate reasons for this low conversion, we will now perform segmentation based on Device Type, Country, and Referral Source.

**Further Segmentation**

Device Type


Country



Referral Source









### Key Insights and Recommendations

### Acknowledgements
Thank you to Kaggle for providing this dataset and to you for making it this far!!!
