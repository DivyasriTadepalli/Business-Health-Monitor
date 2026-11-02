-- -- Average customer satisfaction by category
SELECT Category,ROUND(AVG(Customer_Satisfaction), 2) AS average_customer_satisfaction
FROM brandx_analysis
GROUP BY Category
ORDER BY average_customer_satisfaction DESC;

-- --  Average satisfaction and return rate by category
SELECT Category,ROUND(AVG(Customer_Satisfaction), 2) AS average_customer_satisfaction,
ROUND(AVG(Return_Rate), 2) AS average_return_rate
FROM brandx_analysis
GROUP BY Category
ORDER BY average_return_rate DESC;

-- --  Return-reason counts by category
SELECT Category,Return_Reason,COUNT(*) AS reason_count
FROM brandx_analysis
GROUP BY Category, Return_Reason
ORDER BY Category, reason_count DESC;

-- --  Overall counts by return reason
SELECT Return_Reason,COUNT(*) AS total_records
FROM brandx_analysis
GROUP BY Return_Reason
ORDER BY total_records DESC;

-- --  Total records by category
SELECT Category,COUNT(*) AS total_records
FROM brandx_analysis
GROUP BY Category
ORDER BY total_records DESC;

