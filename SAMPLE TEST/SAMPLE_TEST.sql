USE ecommerce;
SELECT COUNT(*) AS customers FROM customers;
SELECT COUNT(*) AS products FROM products;
SELECT COUNT(*) AS orders_total, SUM(total_amount) AS total_revenue FROM orders;
SELECT SUM(quantity) AS total_units_sold FROM order_items;
