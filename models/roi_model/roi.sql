{{ config(materialized='table') }}


SELECT
    l.user_id,
    lifetime,
    cumulative_daily_rev,
    channel,
    campaign_id, 
    attribution_cost,
    DIV0(cumulative_daily_rev, attribution_cost) AS roi
FROM
    {{ ref("ltv") }} AS l
INNER JOIN
    {{ ref("users_with_attribution") }} AS a ON l.user_id=a.user_id