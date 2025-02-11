-- This test checks if we have users with lifetime < 0 (No negative values)

SELECT
    *
FROM
    {{ ref("ltv") }} as l
WHERE lifetime < 0