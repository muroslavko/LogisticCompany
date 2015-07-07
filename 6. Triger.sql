IF OBJECT_ID ('reminder1', 'TR') IS NOT NULL
   DROP TRIGGER reminder1;
GO
CREATE TRIGGER reminder1
ON dbo.[Itinerary List]
INSTEAD OF INSERT, UPDATE
AS 
Begin
declare @start date;
declare @finish date;
declare @id int;
declare @OutletId int;
select @id = DriverNumber from  inserted;
select @start = DepartureDate from  inserted;
select @finish = ReturnDate from  inserted;
select @OutletId = OutletId from  inserted;
if (select COUNT(*)
			from dbo.[Itinerary List]
			where @id = DriverNumber and
			(@start between DepartureDate and ReturnDate or 
			@finish between DepartureDate and ReturnDate)
	) > 0
RAISERROR ('Select other date', 16, 10);
else
INSERT INTO dbo.[Itinerary List]
VALUES (@start, @finish, @id, @OutletId);
end;
GO