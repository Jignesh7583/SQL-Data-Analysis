TASK 4: Order Details Report-
o Create a comprehensive report that provides a detailed overview of order 
information, payment details, and key metrics .

# Order Information

SELECT  order_id, customer_id, order_date, order_amount, order_status
FROM orders;

# Payment Information

SELECT payment_id, order_id, payment_date, payment_amount, payment_method, payment_status
FROM payments;

# Order and Payment Details

SELECT o.order_id, o.customer_id,p.payment_id, o.order_date, order_amount, o.order_status, p.payment_date, p.payment_amount, p.payment_status, p.payment_method
FROM orders o
JOIN payments p ON o.order_id = p.order_id;

# Order and Payment Status Breakdown

SELECT o.order_status, p.payment_status, COUNT(*) AS order_count
FROM orders o
JOIN payments p ON o.order_id = p.order_id
GROUP BY o.order_status, p.payment_status;

# Order Revenue by Payment Method

SELECT p.payment_method, SUM(o.total_amount) AS total_revenue
FROM orders o
JOIN payments p ON o.order_id = p.order_id
GROUP BY p.payment_method;
