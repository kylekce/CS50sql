SELECT "username"
FROM "users"
JOIN "messages"
ON "users"."id" == "messages"."from_user_id"
WHERE "messages"."expires_timestamp" >= '2024-01-01'