select top 1 hangar.location,hangar.capacity, hangar.capacity - count(airplane.stored_in) as 'Available Space'
from hangar inner join airplane on hangar.number = airplane.stored_in
group by hangar.location, hangar.capacity
order by [Available Space] desc
