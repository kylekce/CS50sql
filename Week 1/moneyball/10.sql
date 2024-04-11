SELECT "first_name", "last_name", "salaries"."salary", "salaries"."year", "performances"."HR"
FROM "players"
JOIN "salaries" ON "players"."id" = "salaries"."player_id"
JOIN "performances" ON "salaries"."year" = "performances"."year"
WHERE "players"."id" = 1315
GROUP BY "salaries"."year"
ORDER BY "players"."id" ASC, "salaries"."year" DESC, "performances"."HR" DESC, "salaries"."salary" DESC;