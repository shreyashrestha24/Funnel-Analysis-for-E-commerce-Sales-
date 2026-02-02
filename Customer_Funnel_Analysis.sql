-- Funnel analysis per user
WITH funnel AS (
    SELECT
        UserID,

        -- Step flags per funnel stage
        MAX(CASE WHEN PageType = 'home' THEN 1 ELSE 0 END) AS step_home,
        MAX(CASE WHEN PageType = 'product_page' THEN 1 ELSE 0 END) AS step_product,
        MAX(CASE WHEN PageType = 'cart' OR ItemsInCart > 0 THEN 1 ELSE 0 END) AS step_cart,
        MAX(CASE WHEN PageType = 'checkout' THEN 1 ELSE 0 END) AS step_checkout,
        MAX(CASE WHEN PageType = 'confirmation' OR Purchased = 1 THEN 1 ELSE 0 END) AS step_purchase

    FROM customer_journey_for_funnel_analysis
    GROUP BY UserID
)

-- Funnel totals and conversion rates
SELECT
    COUNT(*) AS total_users,

    -- Number of users at each step
    SUM(step_home) AS users_home,
    SUM(step_product) AS users_product,
    SUM(step_cart) AS users_cart,
    SUM(step_checkout) AS users_checkout,
    SUM(step_purchase) AS users_purchase,

    -- Conversion rates between steps
    ROUND(SUM(step_product)*100.0/SUM(step_home),2) AS home_to_product_pct,
    ROUND(SUM(step_cart)*100.0/SUM(step_product),2) AS product_to_cart_pct,
    ROUND(SUM(step_checkout)*100.0/SUM(step_cart),2) AS cart_to_checkout_pct,
    ROUND(SUM(step_purchase)*100.0/SUM(step_checkout),2) AS checkout_to_purchase_pct

FROM funnel;
