SELECT "friend_id"
FROM "friends"
WHERE "user_id" == (
    SELECT "id"
    FROM "users"
    WHERE "username" == 'creativewisdom377' OR "username" == 'dancingwizard'
)