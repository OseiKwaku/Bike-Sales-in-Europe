--SQL Project 2-- Bike Sales In Europe

-- Total sales revenue by country
-- Total profit by product category
-- Most popular product sub category by sales quantity
-- Average unit price by product
-- Total orders from each customer age group
-- Year with most profit
-- Top 5 countries by revenue
-- Profit margin by product category 
-- Sales performance by age group and country
-- Total cost by state
-- Top 5 products by profit
-- Top product by profitability
-- Sales performance by sub category and category
-- Profit contribution bt state and product category
-- Most profitable product by country and state
-- Revenue, Cost, and Profit Trends by Month and Year


SELECT *
FROM BikeSales

--Total Distinct Country
SELECT COUNT(DISTINCT Country) AS Total_Countries
FROM BikeSales

-- Total sales revenue by country
SELECT Country, SUM(Revenue) AS Total_Revenue
FROM BikeSales
GROUP BY Country 
ORDER BY SUM(Revenue) DESC


--Total profit by product category
SELECT Product_Category, SUM(Profit) AS Total_Profit
FROM BikeSales
GROUP BY Product_Category
ORDER BY SUM(Profit)  DESC


-- Most popular product sub category by sales quantity
SELECT Sub_Category, SUM(Order_Quantity) AS Total_Orders
FROM BikeSales
GROUP BY Sub_Category
ORDER BY SUM(Order_Quantity) DESC


-- Average unit price by product
SELECT Product, AVG(Unit_Price) AS Average_Price
FROM BikeSales
GROUP BY Product
ORDER BY AVG(Unit_Price) DESC

-- Total orders from each customer age group
SELECT Age_Group, SUM(Order_Quantity) AS Total_Orders
FROM BikeSales
GROUP BY Age_Group
ORDER BY SUM(Order_Quantity) DESC

--Year with most profit
SELECT Year, MAX(Profit) AS Total_Profit
FROM BikeSales
GROUP BY Year
ORDER BY MAX(Profit) DESC

--Top 5 countries by revenue
SELECT TOP 5 Country, SUM(Revenue) AS Total_Revenue
FROM BikeSales
GROUP BY Country
ORDER BY SUM(Revenue) DESC

-- Profit margin by product category
SELECT Product_Category, (SUM(Profit) / SUM(Revenue)) *100 AS Profit_Margin
FROM BikeSales
GROUP BY Product_Category

-- Sales performance by age group and country
SELECT Age_Group, Country, SUM(Revenue) AS Total_Revenue
FROM BikeSales
GROUP BY Age_Group, Country
ORDER BY SUM(Revenue) DESC

-- Total cost by state
SELECT State, SUM(Unit_Cost) AS Total_Cost
FROM BikeSales
GROUP BY  State
ORDER BY SUM(Unit_Cost) DESC

-- Top 5 products by profit
SELECT TOP 5 Product, SUM(Profit) AS Total_Profit
FROM BikeSales
GROUP BY Product
ORDER BY SUM(Profit)

-- Top product by profitability
SELECT Product, SUM(Profit) / SUM(Order_Quantity) AS ProfitPerItem
FROM BikeSales
GROUP BY Product
ORDER BY SUM(Profit) / SUM(Order_Quantity) DESC

-- Sales performance by sub category and age group
SELECT Sub_Category,Age_Group, SUM(Revenue) AS Total_Revenue
FROM BikeSales
GROUP BY Sub_Category,Age_Group
ORDER BY SUM(Revenue) DESC

-- Profit contribution bt state and product category
SELECT State, Product_Category, SUM(Profit) AS Total_Profit
FROM BikeSales
GROUP BY State, Product_Category
ORDER BY SUM(Profit) DESC

-- Most profitable product by country and state
SELECT Country, State, Product, SUM(Profit) AS Total_Profit
FROM BikeSales
GROUP BY Country, State, Product
ORDER BY Country, State, SUM(Profit) DESC

--Revenue, Cost, and Profit Trends by Month and Year
SELECT Year, Month, SUM(Revenue) AS Total_Revenue, SUM(Unit_Cost) AS Total_Cost, SUM(Profit) AS Total_Profit
FROM BikeSales
GROUP BY  Year, Month
ORDER BY  Year, Month

-- 