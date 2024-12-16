# Write your MySQL query statement below

SELECT email AS Email
FROM (
SELECT EMAIL, COUNT(EMAIL)
FROM Person
GROUP BY EMAIL
HAVING COUNT(email) > 1
) AS DUPLE