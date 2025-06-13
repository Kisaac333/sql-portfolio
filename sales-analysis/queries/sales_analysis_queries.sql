-- -----------------------------------
-- Total Revenue by Region
-- -----------------------------------
SELECT 
	SUM(Revenue) AS `Total Revenue`, 
	Region
FROM 
	sales_data
GROUP BY 
	Region
ORDER BY 
	`Total Revenue` DESC;
	
-- -----------------------------------
-- Total Orders per Region
-- -----------------------------------
SELECT 
	Region,
	COUNT(*) AS `Total Orders`
FROM sales_data
GROUP BY 
	Region
ORDER BY `Total Orders` DESC;

-- -----------------------------------
-- Highest Revenue Day
-- -----------------------------------
SELECT 
	Order_Date,
	SUM(Revenue) AS `Total Revenue`
FROM
	sales_data
GROUP BY 
	Order_Date
ORDER BY 
	`Total Revenue` DESC
LIMIT 1;

-- -----------------------------------
-- Best Selling Product by Quantity
-- -----------------------------------
SELECT SUM(Quantity) AS `Total Quantity Sold`, Product
FROM sales_data
GROUP BY Product
ORDER BY `Total Quantity Sold` DESC
LIMIT 1;

-- -----------------------------------
-- Revenue by Product Category
-- -----------------------------------
SELECT
	SUM(Revenue) AS `Total Revenue`,
	Category
FROM
	sales_data
GROUP BY 
	Category
ORDER BY
	`Total Revenue` ASC;  
	
	
-- -----------------------------------
-- Top 5 Products by Total Sales Value
-- -----------------------------------
SELECT 
	Product, 
	SUM(Revenue) AS `Total Revenue`
FROM 
	sales_data
GROUP BY 
	Product
ORDER BY 
	`Total Revenue` DESC
LIMIT 5;

-- -----------------------------------
-- Monthly Revenue Trend
-- -----------------------------------
SELECT 
  strftime('%Y-%m', Order_Date) AS Month,
  SUM(Revenue) AS `Total Revenue`
FROM 
  sales_data
GROUP BY 
  Month
ORDER BY 
  Month ASC;
  
-- -----------------------------------
-- Best Selling Product by Quantity
-- -----------------------------------
SELECT 
	SUM(Quantity) AS `Total Quantity Sold`,
	Product
FROM sales_data
GROUP BY 
	Product
ORDER BY 
	`Total Quantity Sold` DESC
LIMIT 1;

-- -----------------------------------
-- Top 5 Customers by Revenue
-- -----------------------------------
SELECT
	Customer_ID,
	SUM(Revenue) AS `Total Revenue`
FROM sales_data
GROUP BY 
	Customer_ID
ORDER BY 
	`Total Revenue` DESC
LIMIT 5;

SELECT *
FROM sales_data
LIMIT 5;
