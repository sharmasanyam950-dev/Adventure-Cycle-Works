SELECT
    MONTH(STR_TO_DATE(s.OrderDate, '%m/%d/%Y')) AS sales_month,
    SUM(s.OrderQuantity * p.ProductPrice) AS monthly_revenue,
    SUM(s.OrderQuantity) AS total_units_sold
FROM all_sales s
JOIN products p
    ON s.ProductKey = p.ProductKey
GROUP BY sales_month
ORDER BY sales_month;
