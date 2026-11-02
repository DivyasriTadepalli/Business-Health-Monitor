-- -- Revenue by category
SELECT Category,SUM(Revenue) AS total_revenue
FROM brandx_analysis
GROUP BY Category
ORDER BY total_revenue DESC;

-- --  Average profit margin by category
SELECT Category,ROUND(AVG(Profit_Margin), 2) AS average_profit_margin
FROM brandx_analysis
GROUP BY Category
ORDER BY average_profit_margin DESC;

-- --  Average profit margin and total revenue by sales channel
SELECT Sales_Channel,ROUND(AVG(Profit_Margin), 2) AS average_profit_margin,SUM(Revenue) AS total_revenue
FROM brandx_analysis
GROUP BY Sales_Channel
ORDER BY average_profit_margin DESC;

