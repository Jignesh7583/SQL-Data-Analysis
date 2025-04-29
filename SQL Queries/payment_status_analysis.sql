TASK 3: Payment Status Analysis-
o Investigate payment status data to identify any potential issues or trends 
related to payment success and failure.

# Payment Success vs Failure:

SELECT payment_status, COUNT(*) AS count
FROM orders
GROUP BY payment_status;

# Failed Payment Orders:

SELECT * FROM orders
WHERE payment_status = 'Failed';  