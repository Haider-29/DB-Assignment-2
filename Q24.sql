select PILOT.PilotID, count(FLIES.model) as 'Can fly N Planes'
from PILOT inner join FLIES on PILOT.pilotssn = FLIES.pid
group by PILOT.PilotID
