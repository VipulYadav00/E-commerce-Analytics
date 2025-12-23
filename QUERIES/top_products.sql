-- TOP PRODUCTS BY REVENUE AND UNITS SOLD

SELECT p.product_id, p.name, p.category,
       SUM(oi.quantity) AS units_sold,
       ROUND(SUM(oi.quantity * oi.unit_price),2) AS revenue
FROM order_items oi
JOIN products p ON oi.product_id = p.product_id
JOIN orders o ON oi.order_id = o.order_id
WHERE o.order_status = 'completed'
GROUP BY p.product_id, p.name, p.category
ORDER BY revenue DESC;