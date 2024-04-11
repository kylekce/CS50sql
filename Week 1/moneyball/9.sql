SELECT "name", ROUND(AVG("salary"), 2) AS "average salary"
FROM "teams"
JOIN "salaries" ON "teams"."id" = "salaries"."team_id"
WHERE "salaries"."year" = 2001
GROUP BY "name"
ORDER BY "average salary" ASC
LIMIT 5;