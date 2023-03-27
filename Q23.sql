select
    CASE
        WHEN OWNERs.Is_Corporation = 0 THEN PERSON.FName
        ELSE CORPORATION.Name
    END AS Name,
count(airplane.RegNum) as 'Total Planes Owned'
from OWNERs inner join airplane on OWNERs.OWNERID = airplane.owned_by
left join person on person.Ssn = OWNERs.personID
left join CORPORATION on CORPORATION.Name = OWNERs.corporationID
group by OWNERs.Is_Corporation, person.FName, CORPORATION.Name
