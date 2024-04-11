SELECT "first_name", "last_name"
FROM (
    SELECT "first_name", "last_name", "players"."id"
    FROM "performances"
    JOIN "players" ON "performances"."player_id" = "players"."id"
    JOIN "salaries" ON "players"."id" = "salaries"."player_id"
    AND "performances"."year" = "salaries"."year"
    WHERE "performances"."year" = 2001 AND "H" > 0  
    ORDER BY "salary" / "H"
    LIMIT 10
)

JOIN "salaries" ON "players"."id" = "salaries"."player_id"
JOIN "performances" ON "players"."id" = "performances"."player_id"
WHERE "performances"."year" = 2001 AND "H" > 0
AND "performances"."year" = "salaries"."year"
ORDER BY "dollars per hit" ASC, "first_name" ASC, "last_name" ASC

INTERSECT

SELECT "first_name", "last_name", "salary" / "RBI" as "dollars per RBI"
FROM "players"
JOIN "salaries" ON "players"."id" = "salaries"."player_id"
JOIN "performances" ON "players"."id" = "performances"."player_id"
WHERE "performances"."year" = 2001 AND "RBI" > 0
AND "performances"."year" = "salaries"."year"
ORDER BY "id"
LIMIT 10;