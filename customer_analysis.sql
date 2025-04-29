TASK 2: Customer Analysis
o Explore customer ordering behavior to identify patterns such as repeat 
ordering, customer segmentation, and trends over time.

SQL Queries:

# Number of Orders per Customer:

SELECT customer_id, COUNT(order_id) AS total_orders
FROM orders
GROUP BY customer_id
ORDER BY total_orders DESC;

# Customers with Repeat Orders:

SELECT customer_id
FROM orders
GROUP BY customer_id
HAVING COUNT(order_id) > 1;

# Customer Segmentation by Spending:

SELECT customer_id, SUM(total_amount) AS total_spent
FROM orders
GROUP BY customer_id
ORDER BY total_spent DESC;