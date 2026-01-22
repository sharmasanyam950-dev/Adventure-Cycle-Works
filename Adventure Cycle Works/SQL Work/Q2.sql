SELECT 
    pc.CategoryName AS category,
    SUM(s.OrderQuantity * p.ProductPrice) AS total_revenue,
    SUM(s.OrderQuantity) AS total_units_sold
FROM all_sales s
JOIN products p 
    ON s.ProductKey = p.ProductKey
JOIN product_subcategories ps 
    ON p.ProductSubcategoryKey = ps.ProductSubcategoryKey
JOIN product_categories pc 
    ON ps.ProductCategoryKey = pc.ProductCategoryKey
GROUP BY pc.CategoryName
ORDER BY total_revenue DESC;
