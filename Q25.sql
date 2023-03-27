--Query to find total amount of salary being paid by airport to employees
--It is important in order to generate pay slips and calculate expenses etc
select sum(EMPLOYEE.Salary) as 'Total Salary Expense of Airport'
from EMPLOYEE 

--Query to find total number of maintainence hours worked by each employee
--It is important for monitoring employee productivity, scheduling work shifts, and determining workloads.

SELECT 
    EMPLOYEE.EID, 
    PERSON.FName, 
    SUM(plane_service.hours) AS TotalHours
FROM EMPLOYEE
INNER JOIN PERSON ON EMPLOYEE.Ssn = PERSON.Ssn
INNER JOIN PLANE_SERVICE ON EMPLOYEE.EID = PLANE_SERVICE.employeeID
GROUP BY EMPLOYEE.EID, PERSON.FName;

--Query to find out number of pilots with each restriction
--This is imporant for managing and assigning pilots according to their qualifications and limitations.

select pilot_restrictions.restriction as Restriction, count(pilot.pilotid) as 'Number of Pilots'
from pilot_restrictions inner join PILOT on PILOT.PilotID = pilot_restrictions.pilotID
group by pilot_restrictions.restriction

--Query to find contact information of all non corporation owners
--This is important to to maintain up-to-date contact information for their individual clients.

SELECT 
    FName AS Name, 
    FAddress AS Address, 
    Phone
FROM PERSON
INNER JOIN OWNERS o ON PERSON.Ssn = o.personID
WHERE o.Is_Corporation = 0;

--Query to find the airplane models with a capacity greater than a specific value
--This is important to scheduele flights which have a specific capacity requirment to ensure safety 

SELECT 
    Model, 
    Capacity
FROM PLANE_TYPE
WHERE Capacity > 500;
