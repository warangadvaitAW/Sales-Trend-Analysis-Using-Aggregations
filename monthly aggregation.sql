SELECT
    YEAR([Date]) AS year,
    MONTH([Date]) AS month,
    FORMAT([Date], 'yyyy-MM') AS year_month,
    SUM([Total_Revenue]) AS monthly_revenue,
    COUNT(DISTINCT [Transaction_ID]) AS order_volume
FROM [Online Sales Data]
GROUP BY YEAR([Date]), MONTH([Date]), FORMAT([Date], 'yyyy-MM')
ORDER BY year, month;
