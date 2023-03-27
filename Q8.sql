SELECT 
    CASE
        WHEN OWNERs.Is_Corporation = 0 THEN PERSON.FName
        ELSE CORPORATION.Name
    END AS Name,
    CASE
        WHEN OWNERs.Is_Corporation = 0 THEN PERSON.Phone
        ELSE CORPORATION.Phone
    END AS Phone,
	airplane.of_type
FROM OWNERS 
LEFT JOIN PERSON  ON OWNERs.personID = PERSON.Ssn
LEFT JOIN CORPORATION  ON OWNERs.corporationID = CORPORATION.Name
INNER JOIN airplane  ON OWNERs.OWNERID = airplane.owned_by
WHERE airplane.purchaseDate >= DATEADD(MONTH, -1, GETDATE());
