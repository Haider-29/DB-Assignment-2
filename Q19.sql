select hangar.number, hangar.location, count(airplane.stored_in) as 'Number of Planes'
from hangar inner join airplane on hangar.number = airplane.stored_in
group by hangar.number, hangar.location
