SELECT
    p.ProductName,
    SUM(s.OrderQuantity) AS total_units_sold,
    COALESCE(SUM(r.ReturnQuantity), 0) AS total_units_returned,
    ROUND(
        COALESCE(SUM(r.ReturnQuantity), 0) / SUM(s.OrderQuantity) * 100,
        2
    ) AS return_rate_percentage
FROM all_sales s
JOIN products p
    ON s.ProductKey = p.ProductKey
LEFT JOIN returns r
    ON s.ProductKey = r.ProductKey
GROUP BY p.ProductName
ORDER BY return_rate_percentage DESC;
