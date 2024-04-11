SELECT "first_name", "last_name", "salaries"."salary", "salaries"."year", "performances"."HR"
FROM "players"
JOIN "salaries" ON "players"."id" = "salaries"."player_id"
JOIN "performances" ON "players"."id" = "performances"."player_id"
GROUP BY "salaries"."year"
LIMIT 10;