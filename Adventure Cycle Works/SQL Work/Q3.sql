SELECT 
    p.ProductName,
    SUM(s.OrderQuantity) AS total_units_sold,
    SUM(s.OrderQuantity * p.ProductPrice) AS total_revenue
FROM all_sales s
JOIN products p
    ON s.ProductKey = p.ProductKey
GROUP BY p.ProductName
ORDER BY total_revenue DESC;
