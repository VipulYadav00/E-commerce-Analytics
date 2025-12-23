-- RETENTION RATE (MONTH - NEXT MONTH)

WITH monthly_customers AS (
  SELECT DATE_FORMAT(order_date, '%Y-%m') AS ym, customer_id
  FROM orders
  WHERE order_status='completed'
  GROUP BY ym, customer_id
)
SELECT m1.ym AS month,
       COUNT(DISTINCT m1.customer_id) AS customers_this_month,
       COUNT(DISTINCT m2.customer_id) AS customers_next_month,
       ROUND(100.0 * COUNT(DISTINCT m2.customer_id) / NULLIF(COUNT(DISTINCT m1.customer_id),0),2) AS retention_pct
FROM monthly_customers m1
LEFT JOIN monthly_customers m2
  ON m2.ym = DATE_FORMAT(DATE_ADD(STR_TO_DATE(CONCAT(m1.ym,'-01'), '%Y-%m-%d'), INTERVAL 1 MONTH), '%Y-%m')
  AND m1.customer_id = m2.customer_id
GROUP BY m1.ym
ORDER BY m1.ym;