SELECT "players"."first_name", "players"."last_name", "salary"
FROM "salaries"
JOIN "players" ON "salaries"."player_id" = "players"."id"
ORDER BY "salary" ASC, "first_name" ASC, "last_name" ASC, "player_id" ASC
LIMIT 50;
