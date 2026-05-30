CREATE database ecommerce_analysis;
use ecommerce_analysis;

 -- E-Commerce Sales Data Analysis Project

-- Dataset: Superstore Dataset

CREATE TABLE superstore (
    row_id INT,
    order_id VARCHAR(50),
    order_date VARCHAR(30),
    ship_date VARCHAR(30),
    ship_mode VARCHAR(50),
    customer_id VARCHAR(50),
    customer_name VARCHAR(100),
    segment VARCHAR(50),
    country VARCHAR(50),
    city VARCHAR(50),
    state VARCHAR(50),
    postal_code VARCHAR(20),
    region VARCHAR(50),
    product_id VARCHAR(50),
    category VARCHAR(50),
    sub_category VARCHAR(50),
    product_name TEXT,
    sales DECIMAL(10,2),
    quantity INT,
    discount DECIMAL(5,2),
    profit DECIMAL(10,2)
);
  
--------------------------------------------------

-- 1. view dataset

SELECT * FROM superstore LIMIT 10;

--------------------------------------------------

-- 2. Total Sales Analysis

SELECT SUM(sales) AS total_sales FROM superstore;

--------------------------------------------------

-- 3. Total Profit Analysis

SELECT SUM(profit) AS total_profit FROM superstore;

--------------------------------------------------

-- 4. Total Orders

SELECT COUNT(DISTINCT customer_id) AS total_order FROM superstore;

--------------------------------------------------

-- 5. Top 5 States by Sales

SELECT state, SUM(sales) AS total_sales FROM superstore GROUP BY state ORDER BY total_sales DESC LIMIT 5;

--------------------------------------------------

-- 6. Top 5 Customers by Sales

SELECT customer_name,SUM(sales) AS total_sales FROM superstore GROUP BY customer_name ORDER BY total_sales DESC LIMIT 5;

--------------------------------------------------

-- 7. Category-wise Sales Analysis

SELECT category, SUM(sales) AS total_sales FROM superstore GROUP BY category ORDER BY total_sales DESC;

--------------------------------------------------

-- 8. Sub-Category-wise Profit Analysis

SELECT sub_category,SUM(profit) AS total_profit FROM superstore GROUP BY sub_category ORDER BY total_profit DESC;

--------------------------------------------------

-- 9. Region-wise Sales Analysis

SELECT region, SUM(sales) AS total_sales FROM superstore GROUP BY region ORDER BY total_sales DESC;

--------------------------------------------------

-- 10. Average Sales Per Order

SELECT ROUND(AVG(sales),2) AS average_sales FROM superstore ;

--------------------------------------------------

-- 11. Top Selling Products

SELECT product_name, SUM(sales) AS total_sales FROM superstore GROUP BY product_name ORDER BY total_sales DESC LIMIT 10;

--------------------------------------------------

-- 12. Discount Impact on Profit

SELECT discount, SUM(sales) AS total_sales FROM superstore GROUP BY discount ORDER BY discount;

--------------------------------------------------

-- 13. Monthly Sales Trend

SELECT order_date, SUM(sales) AS total_sales FROM superstore GROUP BY order_date ORDER BY order_date;

--------------------------------------------------

-- Conclusion

	-- This project analyzes e-commerce sales data to generate business insights related to sales performance, customer behavior, profit trends, and regional analysis.