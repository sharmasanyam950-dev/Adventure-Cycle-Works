SELECT 
    YEAR(STR_TO_DATE(s.OrderDate, '%m/%d/%Y')) AS sales_year,
    SUM(s.OrderQuantity * p.ProductPrice) AS total_revenue,
    SUM(s.OrderQuantity) AS total_units_sold
FROM all_sales s
JOIN products p
    ON s.ProductKey = p.ProductKey
GROUP BY YEAR(STR_TO_DATE(s.OrderDate, '%m/%d/%Y'))
ORDER BY sales_year;

