
select distinct pilot.PilotID, person.FName, airplane.of_type
from PLANE_SERVICE inner join airplane on plane_service.reg# = airplane.RegNum
inner join flies on FLIES.model = airplane.of_type
inner join pilot on FLIES.pid = pilot.pilotssn
inner join PERSON on PERSON.Ssn = pilot.pilotssn
where airplane.Under_Maintanence = 'Yes'
