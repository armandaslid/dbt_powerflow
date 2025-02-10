{{ config(materialized='table') }}


SELECT
    *
FROM
    {{ source('powerflow','registrations_raw')}}
WHERE
    user_id IS NOT NULL