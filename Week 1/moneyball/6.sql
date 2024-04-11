SELECT "name", SUM("performances"."H") AS "total hits"
FROM "teams"
JOIN "performances" ON "teams"."id" = "performances"."team_id"
WHERE "performances"."year" = 2001
GROUP BY "name"
ORDER BY "total hits" DESC
LIMIT 5;

-- SELECT SUM("H") AS "total hits"
-- FROM "performances"
-- WHERE "year" = 2001 AND "team_id" = (
--     SELECT "id" 
--     FROM "teams" 
--     WHERE "name" = 'Minnesota Twins'
-- );