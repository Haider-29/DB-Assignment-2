select PLANE_TYPE.Model, count(airplane.of_type) as 'Total number of planes'
from PLANE_TYPE inner join airplane on PLANE_TYPE.Model = airplane.of_type
group by PLANE_TYPE.Model
