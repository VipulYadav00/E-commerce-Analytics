-- CUSTOMER LIFETIME REVENUE

SELECT c.customer_id, c.email, c.signup_date,
       COUNT(DISTINCT o.order_id) AS orders_count,
       ROUND(COALESCE(SUM(o.total_amount),0),2) AS lifetime_revenue,
       ROUND(COALESCE(AVG(o.total_amount),0),2) AS avg_order_value
FROM customers c
LEFT JOIN orders o ON c.customer_id = o.customer_id AND o.order_status = 'completed'
GROUP BY c.customer_id
ORDER BY lifetime_revenue DESC;