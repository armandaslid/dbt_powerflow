SELECT
    *
FROM
    {{ ref("ltv") }} as l
WHERE lifetime < 0