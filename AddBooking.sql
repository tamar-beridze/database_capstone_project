DELIMITER $
CREATE PROCEDURE Addbooking(
  ID int,
  Date_created datetime,
  TableName int,
  Guest int,
  slot time,
  Staff int)
  BEGIN 
   INSERT INTO booking (BookingID,BookingDate,TableNo,GuestID,Bookingslot,Employee)
   VALUES(ID, Date_created, TableName, Guest, slot, Staff);
   SELECT CONCAT('New booking added') AS Confirmation;
END $
SELECT * FROM booking;

Call ADDbooking(10,'2024-10-2',5,9,'19:00:00',2);
