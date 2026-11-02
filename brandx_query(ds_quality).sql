-- --  Total number of records
SELECT COUNT(*) AS total_records
FROM brandx_analysis;

-- --  Number of columns
-- -- Documented from the dataset schema: 47 columns.

-- --  Check missing Supplier_Rating values
SELECT
COUNT(*) AS total_records,
COUNT(Supplier_Rating) AS non_missing_supplier_ratings,
SUM(Supplier_Rating IS NULL) AS missing_supplier_ratings
FROM brandx_analysis;

-- -- Check distinct categories
SELECT DISTINCT Category
FROM brandx_analysis
ORDER BY Category;

-- --  Check distinct sales channels
SELECT DISTINCT Sales_Channel
FROM brandx_analysis 
ORDER BY Sales_Channel;

