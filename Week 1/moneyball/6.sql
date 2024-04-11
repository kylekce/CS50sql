SELECT "name", SUM("H") AS "Total Hits"
FROM "teams"
WHERE "id" ON (
    SELECT "team_id"
    FROM "performances"
    WHERE "year" = 2001
)
LIMIT 5;