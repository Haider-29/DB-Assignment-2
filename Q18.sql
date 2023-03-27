WITH CorporationPurchases AS (
    SELECT 
        a.of_type AS PlaneType,
        a.purchaseDate,
        o.OWNERID
    FROM AIRPLANE a
    INNER JOIN OWNERS o ON a.owned_by = o.OWNERID
    WHERE o.Is_Corporation = 1
        AND a.purchaseDate >= DATEADD(month, -1, GETDATE())
),
OwnerPlanes AS (
    SELECT
        a.RegNum,
        a.of_type AS PlaneType,
        a.purchaseDate,
        o.OWNERID
    FROM AIRPLANE a
    INNER JOIN OWNERS o ON a.owned_by = o.OWNERID
    WHERE o.Is_Corporation = 0
)

SELECT DISTINCT
    p.FName AS Name,
    p.FAddress AS Address
FROM PERSON p
INNER JOIN OWNERS o ON p.Ssn = o.personID
INNER JOIN OwnerPlanes op ON o.OWNERID = op.OWNERID
WHERE EXISTS (
    SELECT 1
    FROM CorporationPurchases cp
    WHERE cp.PlaneType = op.PlaneType
        AND cp.purchaseDate >= DATEADD(month, -1, GETDATE())
);
