SELECT "name", SUM("performances"."H") AS "total hits"
FROM "teams"
JOIN "performances" ON "teams"."id" = "performances"."team_id"
WHERE "performances"."year" = 2001 AND "teams"."name" = 'Minnesota Twins';
-- GROUP BY "name"
-- ORDER BY "total hits" DESC;