-- Weekly Active Users

SELECT
    toStartOfWeek(event_date) AS week,
    uniqExact(user_id) AS wau
FROM user_activity
GROUP BY week
ORDER BY week;
