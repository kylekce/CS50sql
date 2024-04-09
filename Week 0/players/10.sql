SELECT "first_name" AS 'First Name', "last_name" AS 'Last Name'
FROM "players"
WHERE "bats" IS NULL
ORDER BY "first_name" ASC, "last_name" ASC;