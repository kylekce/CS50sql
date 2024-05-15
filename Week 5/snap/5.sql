SELECT "friend_id" 
FROM "friends" 
WHERE "user_id" = (
    SELECT "user_id" 
    FROM "users" 
    WHERE "username" = 'lovelytrust487'
)

INTERSECT

SELECT "friend_id" 
FROM "friends" 
WHERE "user_id" = (
    SELECT "user_id" 
    FROM "users" 
WHERE "username" = 'exceptionalinspiration482'
);
