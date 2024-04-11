SELECT "first_name", "last_name", "salary", "performances"."year", "HR"
FROM "performances"
JOIN "salaries" ON "performances"."player_id" = "salaries"."player_id"
JOIN "players" ON "performances"."player_id" = "players"."id" 
AND "performances"."year" = "salaries"."year"
ORDER BY "players"."id" ASC, "salaries"."year" DESC, "HR" DESC, "salary" DESC;