select airplane.of_type, airplane.RegNum 
from airplane inner join OWNERs on OWNERs.OWNERID = airplane.owned_by
inner join PLANE_SERVICE on airplane.RegNum = PLANE_SERVICE.Reg#
inner join EMPLOYEE on EMPLOYEE.EID = PLANE_SERVICE.employeeID
where OWNERs.Is_Corporation = 0 or EMPLOYEE.ShiftInfo = 'Day'
