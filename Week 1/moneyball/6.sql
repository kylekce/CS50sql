SELECT "name", SUM("performances"."H") AS "total hits"
FROM "teams"
JOIN "performances" ON "teams"."id" = "performances"."team_id"
WHERE "teams"."year" = 2001
GROUP BY "name"
ORDER BY "total hits" DESC
LIMIT 5;