SELECT
    t.Region,
    SUM((p.ProductPrice - p.ProductCost) * s.OrderQuantity) AS total_profit,
    SUM(s.OrderQuantity * p.ProductPrice) AS total_revenue,
    ROUND(
        SUM((p.ProductPrice - p.ProductCost) * s.OrderQuantity) /
        SUM(s.OrderQuantity * p.ProductPrice) * 100,
        2
    ) AS profit_margin_percentage
FROM all_sales s
JOIN products p
    ON s.ProductKey = p.ProductKey
JOIN territories t
    ON s.TerritoryKey = t.SalesTerritoryKey
GROUP BY t.Region
ORDER BY profit_margin_percentage DESC;
