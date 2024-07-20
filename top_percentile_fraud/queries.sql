WITH RankedClaims AS (
    SELECT
        *,
        ROW_NUMBER() OVER (PARTITION BY state ORDER BY claim_cost DESC) AS rn
    FROM
        fraud_score
)
SELECT
    policy_num,
    state,
    claim_cost,
    fraud_score
FROM
    RankedClaims
WHERE
    rn <= 5
ORDER BY
    state,
    claim_cost DESC;
