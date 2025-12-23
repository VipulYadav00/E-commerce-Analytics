-- RFM BASE TABLE (RECENCY, FREQUENCY, MONETARY)

SET @ref_date = '2024-12-31';
SELECT
  c.customer_id,
  MAX(o.order_date) AS last_order_date,
  DATEDIFF(@ref_date, MAX(o.order_date)) AS recency_days,
  COUNT(o.order_id) AS frequency,
  ROUND(COALESCE(SUM(o.total_amount),0),2) AS monetary
FROM customers c
LEFT JOIN orders o ON c.customer_id = o.customer_id AND o.order_status='completed'
GROUP BY c.customer_id;