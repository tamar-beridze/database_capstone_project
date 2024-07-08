DELIMITER $
CREATE PROCEDURE CancelBooking(ID int)
 
  BEGIN 
   Delete FROM booking 
   where BookingID=ID;
   SELECT CONCAT('Booking Cancelled') AS Confirmation;
END $
CALL CancelBooking(10);
