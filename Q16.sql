select person.FName, person.Ssn, CORPORATION.Name, sum(PLANE_SERVICE.hours) as totalHours
from PERSON inner join EMPLOYEE on person.Ssn = EMPLOYEE.Ssn 
inner join PLANE_SERVICE on PLANE_SERVICE.employeeID = EMPLOYEE.EID 
inner join airplane on airplane.RegNum = PLANE_SERVICE.Reg#
inner join OWNERs on airplane.owned_by = OWNERs.OWNERID
inner join CORPORATION on OWNERs.corporationID = CORPORATION.Name 
group by PERSON.FName, person.Ssn, CORPORATION.Name
order by totalHours desc
