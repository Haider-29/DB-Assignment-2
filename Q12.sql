select airplane.of_type, avg(PLANE_SERVICE.hours) as 'Average Hours of Maintainence'
from airplane inner join PLANE_SERVICE on PLANE_SERVICE.Reg# = airplane.RegNum
group by airplane.of_type
