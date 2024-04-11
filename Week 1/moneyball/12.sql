SELECT "first_name", "last_name"
FROM (
    SELECT "first_name", "last_name", "id"
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

    INTERSECT

    SELECT "first_name", "last_name", "id"
    FROM (
        SELECT "first_name", "last_name", "players"."id"
        FROM "performances"
        JOIN "players" ON "performances"."player_id" = "players"."id"
        JOIN "salaries" ON "players"."id" = "salaries"."player_id"
        AND "performances"."year" = "salaries"."year"
        WHERE "performances"."year" = 2001 AND "RBI" > 0  
        ORDER BY "salary" / "RBI"
        LIMIT 10
    )
)

ORDER BY "id";