SELECT *, (SELECT customer_id FROM orders WHERE order_details.order_id = orders.id) as customer_id
FROM order_details;