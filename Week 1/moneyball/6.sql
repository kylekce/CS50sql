SELECT "name"
FROM "teams"
JOIN "performances" ON "teams"."id" = "performances"."team_id"
WHERE "year" = 2001
ORDER BY "performances"."H" DESC
LIMIT 5;