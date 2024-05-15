SELECT "username"
FROM "users"
JOIN "messages"
ON "users"."id" == "messages"."to_user_id"
GROUP BY "to_user_id"
ORDER BY COUNT("from_user_id") DESC
LIMIT 3;