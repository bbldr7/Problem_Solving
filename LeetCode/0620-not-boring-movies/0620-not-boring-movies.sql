# Write your MySQL query statement below


SELECT *
FROM Cinema
WHERE description NOT LIKE '%boring%'
AND id IN (SELECT CASE WHEN id % 2 = 1 THEN id END FROM Cinema)
ORDER BY rating DESC