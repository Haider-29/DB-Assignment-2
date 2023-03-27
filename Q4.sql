select CORPORATION.Name, CORPORATION.Address, CORPORATION.Phone, PLANE_TYPE.Model, PLANE_TYPE.Capacity
from CORPORATION, airplane, OWNERs, PLANE_TYPE
where OWNERs.OWNERID = airplane.owned_by and OWNERs.corporationID = CORPORATION.Name
and airplane.of_type = PLANE_TYPE.Model and PLANE_TYPE.Capacity > 200
