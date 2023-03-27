select avg(employee.salary) as 'Average Salary of Night Shift'
from EMPLOYEE
where EMPLOYEE.ShiftInfo = 'Night'
