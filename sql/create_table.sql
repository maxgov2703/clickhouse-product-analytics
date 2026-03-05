CREATE TABLE user_activity
(
    event_date Date,
    user_id UInt32
)
ENGINE = MergeTree
ORDER BY (event_date, user_id);
