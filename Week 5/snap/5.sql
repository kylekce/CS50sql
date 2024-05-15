SELECT "friend_id"
FROM "friends"
WHERE "user_id" = (
    SELECT "id"
    FROM "users"
    WHERE "username" = 'lovelytrust487'
) AND "user_id" = (
    SELECT "id"
    FROM "users"
    WHERE "username" = 'exceptionalinspiration482'
)
GROUP BY "user_id";