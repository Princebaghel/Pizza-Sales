
# Sales Slice: Pizza Analytics

This project performs a comprehensive analysis of pizza sales data, utilizing **SQL** for data extraction and **Power BI** for data visualization. The aim is to generate key business insights through KPIs and visualizations that can help optimize sales strategies and business operations.


## Overview
This project analyzes pizza sales data, focusing on key performance indicators (KPIs) like **Total Revenue**, **Average Order Value**, and **Total Pizzas Sold**. It also explores trends in **daily and monthly order volumes**, sales distribution across **pizza categories and sizes**, and identifies the **top and bottom-selling pizzas**.

The goal is to provide actionable insights for business decision-making and to create a visual representation of the data using Power BI.
## Tech Stack

- **SQL Workbench** (Version 8.0.38) - For writing and executing SQL queries to calculate KPIs and generate data insights.
- **Power BI** (Version 2.138.1203.0) - For creating interactive dashboards and visualizing trends and key metrics.
- **MS Office/Excel** (Version 2021) - Used for data cleaning, preprocessing, and managing data before analysis.



## Data Description
The dataset used in this project contains detailed information about pizza sales, including:
- **Order details**: Order IDs, order dates, and pizza categories
- **Pizza details**: Pizza names, categories, sizes, and quantities
- **Sales data**: Total price, order quantities, and revenue generated per order
The raw data can be found in the `pizza_sales.csv` file.
## KPI Analysis
The following KPIs were calculated using SQL queries:
1. **Total Revenue**: The sum of the total price of all pizza orders.
2. **Average Order Value (AOV)**: The average amount spent per order.
3. **Total Pizzas Sold**: The total number of pizzas sold.
4. **Total Orders**: The total number of orders placed.
5. **Average Pizzas Per Order**: The average number of pizzas sold per order.
These KPIs provide insights into the overall performance of the pizza sales business.

## Key Insights
- **Peak Order Days**: Fridays have the highest order volume (3.5K), followed by weekends, indicating opportunities for weekend-specific promotions or increased staffing.
- **Top Selling Pizzas**: The "Classic Delux Pizza" is the most sold pizza, while premium pizzas like "The Thai Chicken" and "The California Veggie" lead by revenue.
- **Pizza Size Preferences**: Large pizzas dominate sales (45.89%), followed by medium and regular sizes.
- **Underperforming Pizzas**: Pizzas like "The Spinach Delight" and "The Mediterranean Special" show low sales, suggesting potential areas for improvement or removal from the menu.

## How to Run the Project
. **SQL Queries**: 
   - To run the SQL queries, you can use **SQL Workbench** or any SQL client that supports MySQL. 
   - The queries are provided in the `KPI SQL Queries` and `Chart Requirements` section, and the results will give you key metrics and trends for analysis.
   
2. **Power BI**: 
   - Open the Power BI file (`Pizza Sales Dashboard.pbix`) to view the visualizations and dashboards.
   - The data is linked to the `pizza_sales.csv` file for analysis.
## Contributing

Contributions are always welcome!

Feel free to fork this repository and submit pull requests if you have suggestions or improvements. Contributions to enhance the data analysis, SQL queries, or Power BI visualizations are welcome!


