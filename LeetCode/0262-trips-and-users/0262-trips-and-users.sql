-- tbl
-- condi: between "2013-10-01" and "2013-10-03" / with at least one trip
-- col: Day, cancellation rate of requests with unbanned users / ROUND( , 3)

SELECT
    T.request_at AS Day,
    ROUND(
        SUM(IF (T.status IN ('cancelled_by_driver', 'cancelled_by_client'), 1, 0))/COUNT(T.id), 2) AS "Cancellation Rate"
FROM Trips AS T
JOIN Users AS C ON T.client_id = C.users_id AND C.banned = 'No'
JOIN Users AS D ON T.driver_id = D.users_id AND D.banned = 'No'
WHERE 1=1
AND T.request_at BETWEEN '2013-10-01' AND '2013-10-03'
GROUP BY Day
ORDER BY Day