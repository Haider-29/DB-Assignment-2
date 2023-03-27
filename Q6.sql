select top 5 EMPLOYEE.EID, person.FName, sum(PLANE_SERVICE.hours) as HoursWorked
from EMPLOYEE, person, PLANE_SERVICE
where EMPLOYEE.Ssn = person.Ssn and PLANE_SERVICE.employeeID = EMPLOYEE.EID
group by employee.eid, person.FName
order by sum(PLANE_SERVICE.hours) desc
