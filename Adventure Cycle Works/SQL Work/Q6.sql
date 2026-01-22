SELECT
    t.Region,
    SUM(s.OrderQuantity * p.ProductPrice) AS total_revenue,
    ROUND(AVG(s.OrderQuantity * p.ProductPrice), 2) AS avg_order_value
FROM all_sales s
JOIN products p
    ON s.ProductKey = p.ProductKey
JOIN territories t
    ON s.TerritoryKey = t.SalesTerritoryKey
GROUP BY t.Region
ORDER BY total_revenue DESC;
