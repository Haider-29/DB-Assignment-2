SELECT
    p.FName AS PersonName,
    corp.Name AS CorporationName,
    h.number AS HangarNumber
FROM AIRPLANE ap1
INNER JOIN OWNERS o1 ON ap1.owned_by = o1.OWNERID
INNER JOIN PERSON p ON o1.personID = p.Ssn
INNER JOIN HANGAR h ON ap1.stored_in = h.number
INNER JOIN AIRPLANE ap2 ON h.number = ap2.stored_in
INNER JOIN OWNERS o2 ON ap2.owned_by = o2.OWNERID
INNER JOIN CORPORATION corp ON o2.corporationID = corp.Name
WHERE o1.Is_Corporation = 0 AND o2.Is_Corporation = 1;
