DELIMITER $
CREATE PROCEDURE AddValidBooking(p_BookingDate DATE, p_TableNumber int)
BEGIN
DECLARE v_tablestatus INT;

    START TRANSACTION;

    SELECT count(*)
    INTO v_tablestatus
    FROM booking
    WHERE BookingDate = DATE(p_BookingDate) AND TableNo = p_TableNumber;

    IF v_tablestatus = null THEN
        INSERT INTO booking (Date, TableNumber)
        VALUES (p_BookingDate, p_TableNumber);
        COMMIT;
        SELECT CONCAT('Table ',p_TableNumber,' - Booking added successfully for ',p_BookingDate) AS 'Booking Status';
    ELSE
        ROLLBACK;
        SELECT CONCAT('Table ',p_TableNumber, ' is already booked - booking cancelled') AS 'Booking Status';
    END IF;

END $ S
CALL AddVAlidBooking('2022-04-05',2);
Drop PROCEDURE AddValidBooking;