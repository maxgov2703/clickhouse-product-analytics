-- User Retention by Days Since First Visit

WITH first_visits AS (

    SELECT
        user_id,
        min(event_date) AS first_visit
    FROM user_activity
    GROUP BY user_id

)
SELECT
    dateDiff('day', first_visit, event_date) AS days_since_first_visit,
    uniqExact(user_id) AS users
FROM user_activity
INNER JOIN first_visits USING(user_id)
GROUP BY days_since_first_visit
ORDER BY days_since_first_visit;
