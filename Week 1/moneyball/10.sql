SELECT "players"."id", "first_name", "last_name", "salaries"."salary", "salaries"."year", "performances"."HR"
FROM "players"
JOIN "salaries" ON "players"."id" = "salaries"."player_id"
JOIN "performances" ON "salaries"."year" = "performances"."year"
WHERE "salaries"."year" = "performances"."year"
ORDER BY "players"."id" ASC, "salaries"."year" DESC, "performances"."HR" DESC, "salaries"."salary" DESC;