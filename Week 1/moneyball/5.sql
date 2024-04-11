SELECT "name"
FROM "teams"
WHERE "year" ON (
    SELECT "year"
    FROM "teams"
    GROUP BY "year"
    HAVING COUNT("team_id") = 1
)