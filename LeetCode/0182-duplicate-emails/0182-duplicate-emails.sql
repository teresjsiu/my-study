# Write your MySQL query statement below
--  col: all the duplicate emails

SELECT
    email
FROM Person
GROUP BY email
HAVING COUNT(*) > 1
