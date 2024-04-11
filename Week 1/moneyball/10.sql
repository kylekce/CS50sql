SELECT "first_name", "last_name", "salaries"."salary", "salaries"."year", "performances"."HR"
FROM "players"
JOIN "salaries" ON "players"."id" = "salaries"."player_id"
JOIN "performances" ON "salaries"."year" = "performances"."year"
GROUP BY "players"."id", "salaries"."year", "performances"."HR"
ORDER BY "players"."id" ASC, "salaries"."year" DESC, "performances"."HR" DESC, "salaries"."salary" DESC
LIMIT 20;