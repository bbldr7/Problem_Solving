# Write your MySQL query statement below

SELECT name, bonus
FROM Employee AS ep
LEFT JOIN Bonus AS bn
ON ep.empID = bn.empId
WHERE bonus < 1000
OR bonus IS NULL