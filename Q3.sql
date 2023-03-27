SELECT a.RegNum, a.of_type
FROM airplane a LEFT JOIN PLANE_SERVICE ps 
ON a.RegNum = ps.Reg#
WHERE ps.Reg# IS NULL;
