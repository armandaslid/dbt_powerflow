SELECT
    device_id,
    attribution_time,
    'Google_ads' AS channel,
    campaign AS campaign_id,
    cost AS attribution_cost
FROM
    {{source("powerflow",'google_ads')}} AS ga
LEFT JOIN
    {{ ref("campaign_cost") }} AS c ON ga.campaign = c.campaign_id