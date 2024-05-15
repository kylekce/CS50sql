SELECT "username"
FROM "users"
JOIN "messages"
ON "users"."id" == "messages"."to_user_id"
WHERE "to_user_id" == (
    SELECT "to_user_id"
    FROM "messages"
    GROUP BY "from_user_id"
    ORDER BY COUNT("from_user_id") DESC
);