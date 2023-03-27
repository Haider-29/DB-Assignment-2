select EMPLOYEE.ShiftInfo, avg(EMPLOYEE.Salary) as 'Average Salary According to Shift'
from EMPLOYEE group by EMPLOYEE.ShiftInfo
