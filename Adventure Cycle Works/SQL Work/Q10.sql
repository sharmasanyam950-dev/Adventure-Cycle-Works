SELECT
    YEAR(STR_TO_DATE(s.OrderDate, '%m/%d/%Y')) AS sales_year,
    CASE
        WHEN YEAR(STR_TO_DATE(s.OrderDate, '%m/%d/%Y')) =
             YEAR(fp.first_order_date)
            THEN 'New Customer'
        ELSE 'Returning Customer'
    END AS customer_type,
    SUM(s.OrderQuantity * p.ProductPrice) AS total_revenue
FROM all_sales s
JOIN (
    SELECT
        CustomerKey,
        MIN(STR_TO_DATE(OrderDate, '%m/%d/%Y')) AS first_order_date
    FROM all_sales
    GROUP BY CustomerKey
) fp
    ON s.CustomerKey = fp.CustomerKey
JOIN products p
    ON s.ProductKey = p.ProductKey
GROUP BY sales_year, customer_type
ORDER BY sales_year, customer_type;
