select airplane.RegNum, owners.OWNERID, PLANE_SERVICE.dateofService
from airplane, owners, PLANE_SERVICE
where airplane.RegNum = PLANE_SERVICE.Reg# and owners.OWNERID = airplane.owned_by and 
PLANE_SERVICE.dateofService > DATEADD(day,-7,GETDATE())
