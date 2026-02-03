# Funnel Analysis for E-commerce Sales

### Project Overview (Project Description)

This repository contains a funnel analysis of e-commerce user behavior, tracking how visitors progress from landing on the home page through to completing a successful purchase. The goal of this project is to identify where the largest drop-offs occur in the conversion funnel and recommend data-driven strategies to improve customer retention and increase overall sales performance. It also aims to explain how different groups behave, for example mobile users, users from different counties, and differing referral sources. 

### Executive Summary (Results & Insights) 

A funnel analysis measures how users move through each stage of their online purchasing journey — from home page visit, to product view, to cart activity, and finally to completed purchase. At each step, some users exit the process, resulting in conversion loss and missed revenue opportunities.

This analysis evaluates user progression across funnel stages, quantifies conversion rates, and highlights the stage with the highest churn. By identifying where and how users drop off, we can propose strategies to improve flow efficiency and conversion outcomes.

Based on the analysis, the following strategies are suggested to reduce customer churn at each stage, and increase sales:

### Dataset

The Dataset was obtained from Kaggle and can be found this link () for your own analysis. 

The dataset has the following format:

SessionID	UserID	Timestamp	PageType	DeviceType	Country	ReferralSource	TimeOnPage_seconds	ItemsInCart	Purchased
session_0	user_2223	20/01/2025 22:53	home	Desktop	India	Social Media	55	0	0
session_1	user_2192	26/02/2025 12:57	home	Tablet	Germany	Email	99	0	0
session_1	user_2192	26/02/2025 12:59	product_page	Tablet	Germany	Email	121	0	0
session_2	user_1708	24/06/2025 15:40	home	Mobile	India	Google	160	0	0
session_3	user_2976	11/06/2025 07:21	home	Tablet	UK	Google	113	0	0 <img width="856" height="97" alt="image" src="https://github.com/user-attachments/assets/24b0ba20-19b1-4cba-8b92-dfb0bfb943e0" />

### Tools

The funnel analysis was primarily conducted using SQL via DB Browser. 

### Methodology 
iejeie

SQL Query for Funnel Analysis

This Query was written to calculate conversion percentages between each step. 
The query is comprised of CTEs, subqueries, and can be found in this repository. 

Extra segmentation steps were performed to see if and how different DeviceType, Country, ReferralSource groups behave.

### User Funnel Journey

The funnel consists of 5 stages:

  1. Visited Home Page: Users who landed on the Home Page, perhaps through search engines, advertisements, referrals. This represents the total initial traffic entering the funnel.

  2. Viewed Product: Users who clicked on at least one product. This represents initial browsing interest.

  3. Added to Cart: Users that have added products to their cart. This represents buying intent.

  4. Checkout: Users who have moved to checkout, and initiated with the paying process (Entering personal, shipping, card details)

  5. Purchase Confirmed: Users who have completed a successful purchase and received a order confirmation. This represents the final stage of the funnel.

### Results

Raw User Counts
Shows the number of users who reached each step of the funnel.

users_home	users_product	users_cart	users_checkout	users_purchase
1872	1763	1567	855	792 
<img width="365" height="51" alt="image" src="https://github.com/user-attachments/assets/04c2c736-855d-42f5-b5ec-db7ab0892750" />

<img width="417" height="245" alt="image" src="https://github.com/user-attachments/assets/345a1168-dcc4-4c51-8a1a-02cc4f590a63" />

Conversion Rates at each stage (%)
Shows the conversion percentage between each stage.

home_to_product(%)	product_to_cart(%)	cart_to_checkout(%)	checkout_to_purchase(%)
94.18	88.88	54.56	92.63<img width="456" height="51" alt="image" src="https://github.com/user-attachments/assets/c7afa494-12aa-48f6-b3fa-5e66921ccc83" />

<img width="402" height="244" alt="image" src="https://github.com/user-attachments/assets/f21fd3bf-7b56-428d-95e7-92260a529ab4" />

Further Segmentation

Device Type

Country

Referral Source

### Key Insights and Recommendations

### Acknowledgements
Thank you to Kaggle for providing this dataset and to you for making it this far!!!
