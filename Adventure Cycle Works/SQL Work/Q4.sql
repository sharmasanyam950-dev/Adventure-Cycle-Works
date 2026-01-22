WITH customer_spend AS (
    SELECT
        s.CustomerKey,
        SUM(s.OrderQuantity * p.ProductPrice) AS total_spend
    FROM all_sales s
    JOIN products p
        ON s.ProductKey = p.ProductKey
    GROUP BY s.CustomerKey
)
SELECT
    CASE
        WHEN total_spend < 1000 THEN 'Low Spend'
        WHEN total_spend BETWEEN 1000 AND 5000 THEN 'Mid Spend'
        ELSE 'High Spend'
    END AS customer_segment,
    COUNT(*) AS customer_count,
    SUM(total_spend) AS segment_revenue
FROM customer_spend
GROUP BY customer_segment;
