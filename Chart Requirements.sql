Select * From sales;
------------------------------------------------------------------------------------------------------------------------------------

#1. Daily Trend for Total Orders
SELECT 
	DAYNAME(order_date) AS 'Order Day',
	COUNT(DISTINCT order_id) AS 'Total Orders'
FROM sales
GROUP BY DAYNAME(order_date);

------------------------------------------------------------------------------------------------------------------------------------

#2. Monthly Trend for Total Orders
SELECT 
	MONTHNAME(order_date) AS 'Month',
	COUNT(DISTINCT order_id) AS 'Total Orders'
FROM sales
GROUP BY MONTHNAME(order_date);

------------------------------------------------------------------------------------------------------------------------------------

#3. Percentage of Sales by Pizza Category
SELECT 	
	pizza_category AS 'Pizza Category',
        ROUND(SUM(total_price),2) AS 'Total Sales',
        CONCAT(ROUND(SUM(total_price) * 100/(SELECT SUM(total_price) FROM sales),2),'%') AS 'Sales Per Category'
FROM sales
GROUP BY pizza_category;

------------------------------------------------------------------------------------------------------------------------------------

#4. Percentage of Sales by Pizza Size
SELECT 	
	pizza_size AS 'Pizza Size',
        ROUND(SUM(total_price),2) AS 'Total Sales',
        CONCAT(ROUND(SUM(total_price) * 100/(SELECT SUM(total_price) FROM sales),2),'%') AS 'Sales Per Category'
FROM sales
GROUP BY pizza_size;

------------------------------------------------------------------------------------------------------------------------------------

#5. Total Pizzas Sold by Pizza Category

SELECT 	
	pizza_category AS 'Pizza Category',
	SUM(quantity) AS 'Total Quantity'
FROM sales
GROUP BY pizza_category
ORDER BY 'Total Quantity' DESC;

------------------------------------------------------------------------------------------------------------------------------------

#6. Top 5 Best Sellers By Revenue:
SELECT 
	pizza_name,
	SUM(total_price) AS Total_Revenue
FROM sales
GROUP BY pizza_name
ORDER BY Total_Revenue DESC
LIMIT 5;

------------------------------------------------------------------------------------------------------------------------------------

#7. Top 5 Best Sellers By Total Quantity:
SELECT 
	pizza_name,
	SUM(quantity) AS Pizza_Sold
FROM sales
GROUP BY pizza_name
ORDER BY Pizza_Sold DESC
LIMIT 5;

------------------------------------------------------------------------------------------------------------------------------------

#8. Top 5 Best Sellers By Total Orders:
SELECT 
	pizza_name,
	COUNT(DISTINCT order_id) AS Total_Orders
FROM sales
GROUP BY pizza_name
ORDER BY Total_Orders DESC
LIMIT 5;

------------------------------------------------------------------------------------------------------------------------------------

#9. Bottom 5 Sellers By Revenue:
SELECT 
	pizza_name,
	ROUND(SUM(total_price),2) AS Total_Revenue
FROM sales
GROUP BY pizza_name
ORDER BY Total_Revenue ASC
LIMIT 5;

------------------------------------------------------------------------------------------------------------------------------------

#10. Bottom 5 Sellers By Total Quantity:
SELECT 
	pizza_name,
	SUM(quantity) AS Pizza_Sold
FROM sales
GROUP BY pizza_name
ORDER BY Pizza_Sold ASC
LIMIT 5;

------------------------------------------------------------------------------------------------------------------------------------

#11.	Bottom 5 Sellers By Total Orders:
SELECT 
	pizza_name,
	COUNT(DISTINCT order_id) AS Total_Orders
FROM sales
GROUP BY pizza_name
ORDER BY Total_Orders ASC
LIMIT 5;



