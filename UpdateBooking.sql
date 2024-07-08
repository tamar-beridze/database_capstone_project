DELIMITER $
CREATE PROCEDURE UpdateBooking(
  ID int,
  Date_UPDATED datetime,
  TableName int,
  Guest int,
  slot time,
  Staff int)
  BEGIN 
   UPDATE booking set BookingDate=DATE_UPDATED,TableNo=TableName,GuestID=Guest,Bookingslot=slot,Employee=Staff
   where BookingID=ID;
   SELECT CONCAT('Booking updated') AS Confirmation;
END $
SELECT * FROM booking;
Call UpdateBooking(10,'2024-10-2',5,8,'16:00:00',2);