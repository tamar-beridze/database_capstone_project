SELECT gu.GuestID,O.OrderID, gu.Guest_Name, O.Cost,M.MenuName,C.Course_Name
 FROM orders as O
 LEFT JOIN guest as gu ON O.GuestID=gu.GuestID
 LEFT JOIN Menu as M on O.MenuID=M.MenuID
 Left join Course as C on M.itemid=C.CourseID 