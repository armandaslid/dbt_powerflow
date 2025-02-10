WITH reg AS
(
SELECT
    DISTINCT user_id,
    DATE(MIN(registration_time)) AS reg_date
FROM
    {{ ref("registrations_clean") }}
GROUP BY user_id
),

daily_purch AS
(
SELECT
    user_id,
    DATE(transaction_time) AS transaction_date,
    SUM(total_value) AS daily_rev
FROM
    {{ source("powerflow",'transactions') }}
GROUP BY
    user_id,
    transaction_date
)

SELECT
    p.user_id,
    transaction_date,
    reg_date,
    DATEDIFF(DAY, reg_date, transaction_date) AS lifetime,
    daily_rev,
    SUM(daily_rev) OVER(PARTITION BY p.user_id ORDER BY p.transaction_date) AS cumulative_daily_rev
FROM
    daily_purch AS p
LEFT JOIN
    reg AS r ON p.user_id=r.user_id
ORDER BY
    p.user_id,
    transaction_date