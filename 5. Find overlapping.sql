--select t2.* 
delete t2
from [Itinerary List] t1
inner join [Itinerary List] t2
on t2.DepartureDate > t1.DepartureDate
  and t2.DepartureDate < t1.ReturnDate 
  and t1.DriverNumber = t2.DriverNumber

  select * from [Itinerary List]