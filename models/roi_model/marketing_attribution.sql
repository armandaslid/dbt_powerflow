SELECT
    *
FROM
    {{ ref('stg_google_ads') }}
    
UNION

SELECT
    *
FROM
    {{ source('powerflow','appsflyer_raw') }}