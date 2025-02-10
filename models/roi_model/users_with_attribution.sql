SELECT
    user_id,
    registration_time,
    reg.device_id,
    attribution_time,
    COALESCE(channel, 'organic') AS channel,            -- Replaces NULL values with 'organic' to indicate that the user was not acquired through paid advertising.
    COALESCE(campaign_id,'organic') AS campaign_id,
    COALESCE(attribution_cost, 0) AS attribution_cost
FROM
    {{ ref("registrations_clean") }} AS reg
LEFT JOIN
    {{ ref("marketing_attribution") }} AS m ON reg.device_id=m.device_id