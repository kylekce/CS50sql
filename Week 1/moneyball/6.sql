SELECT "name", SUM("H") AS "total_hits"
FROM "teams"
JOIN "performances" ON "teams"."id" = "performances"."team_id"
ORDER BY "performances"."H" DESC
LIMIT 5;