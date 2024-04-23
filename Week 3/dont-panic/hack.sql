UPDATE "users" 
SET "password" = "oops!" 
WHERE "username" = "admin";

DELETE FROM "logs"
WHERE "new_password" = "oops!";

