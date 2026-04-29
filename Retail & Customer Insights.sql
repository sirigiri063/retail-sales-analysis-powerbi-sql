SELECT SUM("Total Amount") AS Total_Sales
FROM retail_sales rs ;

SELECT COUNT("Transaction ID") AS Total_Orders
FROM retail_sales rs 

SELECT "Product Category", SUM("Total Amount") AS Sales
FROM retail_sales rs 
GROUP BY "Product Category";

SELECT Gender, SUM("Total Amount") AS Sales
FROM retail_sales rs 
GROUP BY gender;

SELECT Age_group, SUM("Total Amount") AS Sales
FROM retail_sales rs 
GROUP BY Age_group;

SELECT weekday_flag, SUM("Total Amount") AS Sales
FROM retail_sales rs 
GROUP BY weekday_flag;

SELECT EXTRACT(MONTH FROM TO_DATE("Date", '24-11-2023')) AS Month,
       SUM("Total Amount") AS Sales
FROM retail_sales
GROUP BY EXTRACT(MONTH FROM TO_DATE("Date", '24-11-2023'))
ORDER BY Month;