-- SELECT players.first_name, players.last_name, 
--     salaries.salary / performances.hits AS "dollars per hit"
-- FROM players
-- JOIN salaries ON players.player_id = salaries.player_id
-- JOIN performances ON players.player_id = performances.player_id
-- WHERE performances.year = 2001
--   AND performances.hits > 0
-- ORDER BY "dollars per hit", players.first_name, players.last_name
-- LIMIT 10;

SELECT "first_name", "last_name", "salary" / "H" as "dollars per hit"
FROM "players"
JOIN "salaries" ON "players"."id" = "salaries"."player_id"
JOIN "performances" ON "players"."id" = "performances"."player_id"
WHERE "performances"."year" = 2001 AND "H" > 0
AND "performances"."year" = "salaries"."year"
ORDER BY "dollars per hit" ASC, "first_name" ASC, "last_name" ASC
LIMIT 10;