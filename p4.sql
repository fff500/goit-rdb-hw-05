WITH TemporaryTable AS (
    SELECT *
    FROM order_details
    WHERE quantity > 10
)
SELECT order_id, AVG(quantity) AS avg_quantity
FROM TemporaryTable
GROUP BY order_id;