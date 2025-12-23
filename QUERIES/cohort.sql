-- COHORT ANALYSIS (SIGNUP MONTH - ORDER MONTH)

SELECT
  DATE_FORMAT(c.signup_date, '%Y-%m') AS cohort_month,
  DATE_FORMAT(o.order_date, '%Y-%m') AS order_month,
  COUNT(DISTINCT o.customer_id) AS customers_ordered
FROM customers c
JOIN orders o ON c.customer_id = o.customer_id AND o.order_status='completed'
GROUP BY cohort_month, order_month
ORDER BY cohort_month, order_month;
