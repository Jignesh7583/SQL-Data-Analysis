TASK 1: Order and Sales Analysis-
o Analyze order status and sales data to provide insights into order 
fulfillment and revenue trends. Identify key metrics and trends related to 
order status and sales.

SQL Queries:

# Total Orders and Total Revenue:

SELECT COUNT(order_id) AS total_orders, SUM(total_amount) AS total_revenue
FROM orders;

# Orders by Status:

SELECT order_status, COUNT(*) AS num_orders
FROM orders
GROUP BY order_status;

