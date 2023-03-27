select airplane.RegNum, airplane.of_type, count(PLANE_SERVICE.Reg#) as 'Services Performed on Each Plane'
from airplane inner join PLANE_SERVICE on airplane.RegNum = PLANE_SERVICE.Reg#
group by airplane.RegNum, airplane.of_type
