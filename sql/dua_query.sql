-- Daily Active Users

SELECT
    event_date,
    uniqExact(user_id) AS dau
FROM user_activity
GROUP BY event_date
ORDER BY event_date;
