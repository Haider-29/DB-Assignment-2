select pilot.PilotID, pilot.pilotssn, count(flies.model) as 'Num Airplanes Flown'
from pilot inner join FLIES on PILOT.pilotssn = flies.pid
group by PILOT.PilotID, pilot.pilotssn
