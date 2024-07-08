

PREPARE GetOrderDetail FROM
 'SELECT OrderID, Quantity,Cost
 FROM Orders
 WHERE GuestID = ?';

SET @id = 1;
EXECUTE GetOrderDetail USING @id;

