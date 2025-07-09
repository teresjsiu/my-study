-- tlb: Employee
-- condi1: find the nth highest distinct salary
-- condi2: there are less than n distinct salaries, return null.

CREATE FUNCTION getNthHighestSalary(N INT) RETURNS INT
BEGIN
  RETURN (
        SELECT
            CASE 
                WHEN MAX(row_num) >= N THEN salary
                ELSE null
            END AS salary
        FROM (
        SELECT 
            salary,
            DENSE_RANK() OVER (ORDER BY salary DESC) AS row_num
        FROM Employee
        ) AS T
        WHERE 1=1
            AND row_num = N
  );
END