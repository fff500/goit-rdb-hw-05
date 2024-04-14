DROP FUNCTION IF EXISTS Divide;

DELIMITER //

CREATE FUNCTION Divide(dividend FLOAT, divisor FLOAT)
RETURNS FLOAT
DETERMINISTIC 
READS SQL DATA
BEGIN
    DECLARE result FLOAT;
    SET result = dividend / divisor;
    RETURN result;
END //

DELIMITER ;

SELECT order_id, quantity, Divide(quantity, 2) as some_metric
FROM order_details
ORDER BY some_metric;