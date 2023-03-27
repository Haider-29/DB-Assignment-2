select CORPORATION.name, CORPORATION.Address, CORPORATION.Phone, count(airplane.owned_by) as 'Planes Owned'
from CORPORATION inner join OWNERs on CORPORATION.Name = OWNERs.corporationID 
inner join airplane on airplane.owned_by = OWNERs.OWNERID
group by CORPORATION.name, CORPORATION.Address, CORPORATION.Phone
