SELECT "to_user_id", COUNT("from_user_id") AS "count"
FROM "messages"
GROUP BY "to_user_id"
ORDER BY "count" DESC
LIMIT 10;