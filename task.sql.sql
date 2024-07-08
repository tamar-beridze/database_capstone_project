CREATE 
    ALGORITHM = UNDEFINED 
    DEFINER = `root`@`localhost` 
    SQL SECURITY DEFINER
VIEW `order_view` AS
    SELECT 
        `orders`.`OrderID` AS `OrderID`,
        `orders`.`Quantity` AS `Quantity`,
        `orders`.`Cost` AS `Cost`
    FROM
        `orders`
    WHERE
        (`orders`.`Quantity` > 2)
    ORDER BY `orders`.`Quantity`