SELECT DISTINCT
    CASE
        WHEN o.Is_Corporation = 0 THEN p.FName
        ELSE c.Name
    END AS OwnerName
FROM OWNERS o
LEFT JOIN PERSON p ON o.personID = p.Ssn
LEFT JOIN CORPORATION c ON o.corporationID = c.Name
INNER JOIN airplane a ON o.OWNERID = a.owned_by
INNER JOIN PLANE_SERVICE ps ON a.RegNum = ps.Reg#
INNER JOIN PLANE_TYPE pt ON a.of_type = pt.Model
WHERE NOT EXISTS (
    SELECT 1
    FROM works_on wo
    INNER JOIN EMPLOYEE e ON wo.assigned_employee = e.EID
    WHERE wo.modelNum = pt.Model AND e.Ssn = ps.employeeID
);
