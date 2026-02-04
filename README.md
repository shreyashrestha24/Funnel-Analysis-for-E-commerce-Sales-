# Funnel Analysis for E-commerce Sales 💰 💰 💰 

### Project Overview 

Today we will be conducting a funnel analysis of e-commerce user behavior, tracking how visitors progress from landing on the home page, to product viewing, to adding products to their cart, and finally to completing a successful purchase. Throughout this funnel, customers may exit the journey at a certain stage, resulting in missed revenue opportunities.

The goal of this project is to identify where the largest drop-offs occur in the conversion funnel, and investigate why they might occur. Furthermore, we dig deeper into which customer groups are most at risk of churn, by comparing funnel conversion rates between mobile vs desktop users, customers from different counties, and differing referral sources.

By identifying where and what type of users drop off, we can propose data-driven strategies to improve flow efficiency, customer retention and overall sales performance.

<img width="600" height="315" alt="image" src="https://github.com/user-attachments/assets/564615ce-f14e-4b9e-b7df-582b44830d72" />


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

### Tools: 
SQL (via DB Browser for SQLite) for query writing 
Excel for visualisations 

### Methodology 

1. Inspect the CSV dataset (Kaggle) in Excel.

2. Load dataset into SQL for analysis using CTEs, subqueries, and segmentation queries.

3. Calculate raw user counts and conversion rates between funnel stages.

4. Segment data by Device Type, Country, and Referral Source.

5. Visualise results in Excel using funnel charts and clustered bar charts.

### User Funnel Journey

The customer journey funnel consists of 5 stages:

  1. Visited Home Page: Users who landed on the Home Page, perhaps through search engines, advertisements, referrals. This represents the total initial traffic entering the funnel.

  2. Viewed Product: Users who clicked on at least one product. This represents initial browsing interest.

  3. Added to Cart: Users that have added products to their cart. This represents buying intent.

  4. Checkout: Users who have moved to checkout, and initiated with the paying process (Entering personal, shipping, card details)

  5. Purchase Confirmed: Users who have completed a successful purchase and received a order confirmation. This represents the final stage of the funnel.

### Results (Before Segmentation: Broader Funnel by Customer ID)

Raw User Counts Shows the number of users who reached each step of the funnel, while the conversion rates at each stage (%) shows the conversion percentage between each stage.

<img width="417" height="245" alt="image" src="https://github.com/user-attachments/assets/345a1168-dcc4-4c51-8a1a-02cc4f590a63" />  <img width="402" height="244" alt="image" src="https://github.com/user-attachments/assets/b947c942-ab50-411e-b4e2-4774efc254a8" />

The raw user counts funnel shows a significant decrease in customers from the cart to checkout stage, with a conversion rate of 54.56%. The other conversions have a relatively high conversion efficiency at rates 88% and above. 

To investigate reasons for this low conversion, we will now perform segmentation based on Device Type, Country, and Referral Source.

### Results: Further Segmentation 

**Device Type**

<img width="416" height="243" alt="image" src="https://github.com/user-attachments/assets/d01e9bc5-38db-4009-8563-7728b1d73967" />

Conversion rates between funnel steps are largely consistent across device types, indicating this is unlikely to be a source of user drop-off in the funnel. Mobile users show a slightly higher interest from Home to Product page. 

**Country**

<img width="527" height="311" alt="image" src="https://github.com/user-attachments/assets/a6690230-5401-4cb1-bec7-07884edec9e1" />

Germany has the lowest conversion rate from Checkout to Purchase.


**Referral Source**

<img width="442" height="263" alt="image" src="https://github.com/user-attachments/assets/3c851afb-2a07-4340-b1b7-a32a65030e64" />

Conversion rate between funnel steps are largely consistent across referral sources, indicating this is not a major source of friction of user drop-off. However, at the Cart to checkout stage, Google referred users show slightly better progression.


### Key Insights and Recommendations
The lowest conversion rates across the user funnel journey are found in the cart to checkout. This indicates significant friction causing high user drop-off rates, and therefore loss of revenue. Therefore, targeting this stage is likely to result in the most improvement. 

User churn may be due to 
1. hidden costs
2. requirement for an account to be created
3. checkout button not being visibile to the user

Recommendations should focus on enhancing customer experience and building trust, for example:

1. Simplify the Checkout Process
2. Increase Cost Transparency
3. Improve Checkout Visibility and Accessibility
4. Add Incentivisation for Purchase Completions
5. Gather user feedback to identify reasons for friction at this stage
6. Conduct A/B Testing and Iterate

With the conversion rates being consistent across devices, UX is likely to be strong across device types. With the highest home to product conversion rate, phone screen type is likely to be more engaging for the user. However, the rest of the funnel journey is consistent, with the lowest rates at the cart to checkout stage.

Google users cart to checkout progressions indicates slightly higher purchase intent than other sources, like if they were to land on the website through email and social media advertisements. Recommendations can be made to the marketing team to consider increasing investment toward high-intent search campaigns and directing search traffic to product-focused landing pages.

### Acknowledgements
Thank you to Kaggle for providing this dataset and to you for making it this far!!!
