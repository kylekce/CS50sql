SELECT "first_name", "last_name"
FROM "players" 
WHERE "final_game" LIKE '2022%'
ORDER BY "first_name" ASC, "last_name" ASC;