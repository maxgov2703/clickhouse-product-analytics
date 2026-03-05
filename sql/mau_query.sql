-- Monthly Active Users

SELECT
    toStartOfMonth(event_date) AS month,
    uniqExact(user_id) AS mau
FROM user_activity
GROUP BY month
ORDER BY month;
