# Write your MySQL query statement below

# col: find the employees 
# condi: who earn more than their managers.
-- manger salary 어떻게 가져오지?  -> self-join


    SELECT
        E1.name AS Employee
    FROM Employee AS E1
    JOIN Employee AS E2 
        ON E1.managerId = E2.id
    WHERE E2.salary < E1.salary



