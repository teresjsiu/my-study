# Write your MySQL query statement below

-- col: who earns the most money in each of the company's departments
-- condi: A high earner in a department = a salary in the top three unique salaries for that department.

-- v2
WITH join_info AS (
SELECT
    D.name AS Department,
    E.name AS Employee,
    E.salary AS Salary,
    DENSE_RANK() OVER (PARTITION BY D.name ORDER BY E.salary DESC) AS rnk
FROM Employee AS E
JOIN Department AS D 
    ON E.departmentId = D.id
ORDER BY Salary DESC
)

SELECT
    Department,
    Employee,
    Salary
FROM join_info
WHERE rnk <= 3




-- v1
-- SELECT
--     D.name AS Department,
--     E.name AS Employee,
--     E.salary AS Salary
-- FROM Employee AS E
-- JOIN Department AS D 
--     ON E.departmentId = D.id
-- QUALIFY RANK() OVER(PARTITION BY Department ORDER BY Salary) <= 3
-- ORDER BY Salary DESC

